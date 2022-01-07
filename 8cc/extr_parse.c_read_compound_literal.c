
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Vector ;
typedef int Type ;
struct TYPE_4__ {int * lvarinit; } ;
typedef TYPE_1__ Node ;


 TYPE_1__* ast_lvar (int *,char*) ;
 char* make_label () ;
 int * read_decl_init (int *) ;

__attribute__((used)) static Node *read_compound_literal(Type *ty) {
    char *name = make_label();
    Vector *init = read_decl_init(ty);
    Node *r = ast_lvar(ty, name);
    r->lvarinit = init;
    return r;
}
