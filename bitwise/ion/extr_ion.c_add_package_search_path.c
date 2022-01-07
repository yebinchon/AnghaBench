
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ flag_verbose ;
 int num_package_search_paths ;
 int * package_search_paths ;
 int printf (char*,char const*) ;
 int str_intern (char const*) ;

void add_package_search_path(const char *path) {
    if (flag_verbose) {
        printf("Adding package search path %s\n", path);
    }
    package_search_paths[num_package_search_paths++] = str_intern(path);
}
