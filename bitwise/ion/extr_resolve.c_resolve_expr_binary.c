
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TokenKind ;
struct TYPE_4__ {int right; int left; int op; } ;
struct TYPE_5__ {scalar_t__ kind; TYPE_1__ binary; int pos; } ;
typedef int Operand ;
typedef TYPE_2__ Expr ;


 scalar_t__ EXPR_BINARY ;
 int assert (int) ;
 int resolve_expr_binary_op (int ,char const*,int ,int ,int ,int ,int ) ;
 int resolve_expr_rvalue (int ) ;
 char* token_kind_name (int ) ;

Operand resolve_expr_binary(Expr *expr) {
    assert(expr->kind == EXPR_BINARY);
    Operand left = resolve_expr_rvalue(expr->binary.left);
    Operand right = resolve_expr_rvalue(expr->binary.right);
    TokenKind op = expr->binary.op;
    const char *op_name = token_kind_name(op);
    return resolve_expr_binary_op(op, op_name, expr->pos, left, right, expr->binary.left, expr->binary.right);
}
