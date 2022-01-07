
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_4__ {int sval; } ;
typedef TYPE_1__ Token ;
typedef int Map ;
typedef int Macro ;


 int hashhash_check (int *) ;
 int macros ;
 int * make_func_macro (int *,int ,int) ;
 int * make_map () ;
 int map_len (int *) ;
 int map_put (int ,int ,int *) ;
 int * read_funclike_macro_body (int *) ;
 int read_funclike_macro_params (TYPE_1__*,int *) ;

__attribute__((used)) static void read_funclike_macro(Token *name) {
    Map *param = make_map();
    bool is_varg = read_funclike_macro_params(name, param);
    Vector *body = read_funclike_macro_body(param);
    hashhash_check(body);
    Macro *macro = make_func_macro(body, map_len(param), is_varg);
    map_put(macros, name->sval, macro);
}
