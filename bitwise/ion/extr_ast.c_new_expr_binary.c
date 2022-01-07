
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TokenKind ;
struct TYPE_7__ {TYPE_2__* right; TYPE_2__* left; int op; } ;
struct TYPE_8__ {TYPE_1__ binary; } ;
typedef int SrcPos ;
typedef TYPE_2__ Expr ;


 int EXPR_BINARY ;
 TYPE_2__* new_expr (int ,int ) ;

Expr *new_expr_binary(SrcPos pos, TokenKind op, Expr *left, Expr *right) {
    Expr *e = new_expr(EXPR_BINARY, pos);
    e->binary.op = op;
    e->binary.left = left;
    e->binary.right = right;
    return e;
}
