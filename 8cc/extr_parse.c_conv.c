
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int kind; int bitsize; struct TYPE_10__* ptr; } ;
typedef TYPE_1__ Type ;
struct TYPE_11__ {TYPE_1__* ty; } ;
typedef TYPE_2__ Node ;


 int AST_ADDR ;
 int AST_CONV ;






 TYPE_2__* ast_conv (int ,TYPE_2__*) ;
 TYPE_2__* ast_uop (int ,int ,TYPE_2__*) ;
 int make_ptr_type (TYPE_1__*) ;
 int type_int ;

__attribute__((used)) static Node *conv(Node *node) {
    if (!node)
        return ((void*)0);
    Type *ty = node->ty;
    switch (ty->kind) {
    case 133:

        return ast_uop(AST_CONV, make_ptr_type(ty->ptr), node);
    case 130:

        return ast_uop(AST_ADDR, make_ptr_type(ty), node);
    case 128: case 131: case 132:

        return ast_conv(type_int, node);
    case 129:
        if (ty->bitsize > 0)
            return ast_conv(type_int, node);
    }
    return node;
}
