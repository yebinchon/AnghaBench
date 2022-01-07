
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SpecialMacroHandler ;


 int macros ;
 int make_special_macro (int *) ;
 int map_put (int ,char*,int ) ;

__attribute__((used)) static void define_special_macro(char *name, SpecialMacroHandler *fn) {
    map_put(macros, name, make_special_macro(fn));
}
