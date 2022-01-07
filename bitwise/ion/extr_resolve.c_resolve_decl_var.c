
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int Type ;
struct TYPE_5__ {int expr; int type; } ;
struct TYPE_6__ {scalar_t__ kind; TYPE_1__ var; int pos; } ;
typedef TYPE_2__ Decl ;


 scalar_t__ DECL_VAR ;
 int assert (int) ;
 int is_decl_foreign (TYPE_2__*) ;
 int * resolve_init (int ,int ,int ,int ,int) ;

Type *resolve_decl_var(Decl *decl) {
    assert(decl->kind == DECL_VAR);
    return resolve_init(decl->pos, decl->var.type, decl->var.expr, is_decl_foreign(decl), 0);
}
