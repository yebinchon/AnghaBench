
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ kind; int * lvarinit; TYPE_1__* ty; int loff; } ;
struct TYPE_4__ {int size; } ;
typedef TYPE_2__ Node ;


 scalar_t__ AST_LVAR ;
 int SAVE ;
 int assert (int) ;
 int emit_decl_init (int *,int ,int ) ;

__attribute__((used)) static void ensure_lvar_init(Node *node) {
    SAVE;
    assert(node->kind == AST_LVAR);
    if (node->lvarinit)
        emit_decl_init(node->lvarinit, node->loff, node->ty->size);
    node->lvarinit = ((void*)0);
}
