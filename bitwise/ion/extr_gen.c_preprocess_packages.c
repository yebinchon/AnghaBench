
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t buf_len (int *) ;
 int * package_list ;
 int preprocess_package (int ) ;

void preprocess_packages(void) {
    for (size_t i = 0; i < buf_len(package_list); i++) {
        preprocess_package(package_list[i]);
    }
}
