
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpp_token_one ;
 int cpp_token_zero ;
 int define_obj_macro (char*,int ) ;
 int include_guard ;
 int macros ;
 char* map_get (int ,char*) ;

__attribute__((used)) static bool guarded(char *path) {
    char *guard = map_get(include_guard, path);
    bool r = (guard && map_get(macros, guard));
    define_obj_macro("__8cc_include_guard", r ? cpp_token_one : cpp_token_zero);
    return r;
}
