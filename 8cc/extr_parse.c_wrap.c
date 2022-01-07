
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int Type ;
struct TYPE_6__ {int ty; } ;
typedef TYPE_1__ Node ;


 int AST_CONV ;
 TYPE_1__* ast_uop (int ,int *,TYPE_1__*) ;
 scalar_t__ same_arith_type (int *,int ) ;

__attribute__((used)) static Node *wrap(Type *t, Node *node) {
    if (same_arith_type(t, node->ty))
        return node;
    return ast_uop(AST_CONV, t, node);
}
