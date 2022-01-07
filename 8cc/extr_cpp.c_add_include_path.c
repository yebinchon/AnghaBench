
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int std_include_path ;
 int vec_push (int ,char*) ;

void add_include_path(char *path) {
    vec_push(std_include_path, path);
}
