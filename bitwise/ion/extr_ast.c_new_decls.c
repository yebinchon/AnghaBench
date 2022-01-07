
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t num_decls; int decls; } ;
typedef TYPE_1__ Decls ;
typedef int Decl ;


 int AST_DUP (int **) ;
 TYPE_1__* ast_alloc (int) ;

Decls *new_decls(Decl **decls, size_t num_decls) {
    Decls *d = ast_alloc(sizeof(Decls));
    d->decls = AST_DUP(decls);
    d->num_decls = num_decls;
    return d;
}
