
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vector ;
typedef int Type ;


 int ast_gvar (int ,char*) ;
 int make_func_type (int *,int *,int,int) ;

__attribute__((used)) static void define_builtin(char *name, Type *rettype, Vector *paramtypes) {
    ast_gvar(make_func_type(rettype, paramtypes, 1, 0), name);
}
