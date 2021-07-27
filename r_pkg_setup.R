#------------------------------------------------------ Preliminary Manual steps

# Check package name availability with e.g. {available}
# Create new package
# If on RStudio, configure Build tools



#---------------------------------------------------------- Install dependencies

# install.packages(c("usethis", "devtools"))



#----------------------------------------------------- Initialize Git repository

usethis::use_git() # Do here to avoid restart of RStudio later



#------------------------------------------------------- Set up package metadata

usethis::use_description() # See ?usethis::use_description() for default entries
usethis::use_gpl3_license()
usethis::use_namespace()
usethis::use_package_doc(open = FALSE)



#-------------------------------------------------------------------- Add README

usethis::use_readme_rmd(open = FALSE)
# Optional: modify README
devtools::build_readme()



#-------------------------------------------------------- Set up package testing

usethis::use_testthat()



#-------------------------------------------------- Initialize GitHub repository

usethis::use_git() # Commit
usethis::use_github()



#------------------------------------------ Set up R-CMD-Check and coverage GHAs

usethis::use_github_action_check_full()
usethis::use_coverage()
usethis::use_github_action("test-coverage")



#----------------------------- Set up pkgdown website (build on gh-pages branch)

usethis::use_pkgdown()
usethis::use_github_action("pkgdown")



#------------------------------------------------------ Additional README badges

usethis::use_cran_badge()



#------------------------------------------------------------------------ Commit

devtools::build_readme()
usethis::use_git()



#------------------------------------------------------------ Final manual steps

# Push
# Set GitHub Pages branch to gh-pages; website will correctly build at next push
