
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int TokenKind ;
struct TYPE_7__ {int type; int val; scalar_t__ is_const; } ;
typedef TYPE_1__ Operand ;


 int eval_binary_op (int ,int ,int ,int ) ;
 TYPE_1__ operand_const (int ,int ) ;
 TYPE_1__ operand_rvalue (int ) ;

Operand resolve_binary_op(TokenKind op, Operand left, Operand right) {
    if (left.is_const && right.is_const) {
        return operand_const(left.type, eval_binary_op(op, left.type, left.val, right.val));
    } else {
        return operand_rvalue(left.type);
    }
}
