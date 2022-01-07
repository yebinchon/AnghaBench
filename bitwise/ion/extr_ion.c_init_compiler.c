
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int decl_note_names ;
 int declare_note_name ;
 int init_builtin_types () ;
 int init_keywords () ;
 int init_package_search_paths () ;
 int init_target () ;
 int map_put (int *,int ,void*) ;

void init_compiler(void) {
    init_target();
    init_package_search_paths();
    init_keywords();
    init_builtin_types();
    map_put(&decl_note_names, declare_note_name, (void *)1);
}
