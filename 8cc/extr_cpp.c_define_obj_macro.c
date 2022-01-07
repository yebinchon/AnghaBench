
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Token ;


 int macros ;
 int make_obj_macro (int ) ;
 int make_vector1 (int *) ;
 int map_put (int ,char*,int ) ;

__attribute__((used)) static void define_obj_macro(char *name, Token *value) {
    map_put(macros, name, make_obj_macro(make_vector1(value)));
}
