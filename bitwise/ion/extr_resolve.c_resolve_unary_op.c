
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int TokenKind ;
struct TYPE_6__ {int val; int type; scalar_t__ is_const; } ;
typedef TYPE_1__ Operand ;


 int eval_unary_op (int ,int ,int ) ;
 TYPE_1__ operand_const (int ,int ) ;
 int promote_operand (TYPE_1__*) ;

Operand resolve_unary_op(TokenKind op, Operand operand) {
    promote_operand(&operand);
    if (operand.is_const) {
        return operand_const(operand.type, eval_unary_op(op, operand.type, operand.val));
    } else {
        return operand;
    }
}
