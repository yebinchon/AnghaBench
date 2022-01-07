
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ kind; TYPE_1__* ty; struct TYPE_6__* struc; } ;
struct TYPE_5__ {int offset; } ;
typedef TYPE_2__ Node ;


 scalar_t__ AST_STRUCT_REF ;
 int eval_intexpr (TYPE_2__*,int *) ;

__attribute__((used)) static int eval_struct_ref(Node *node, int offset) {
    if (node->kind == AST_STRUCT_REF)
        return eval_struct_ref(node->struc, node->ty->offset + offset);
    return eval_intexpr(node, ((void*)0)) + offset;
}
