
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int ty; } ;
typedef TYPE_1__ Node ;


 TYPE_1__* ast_uop (int,int ,TYPE_1__*) ;
 TYPE_1__* conv (TYPE_1__*) ;
 int ensure_lvalue (TYPE_1__*) ;
 TYPE_1__* read_unary_expr () ;

__attribute__((used)) static Node *read_unary_incdec(int op) {
    Node *operand = read_unary_expr();
    operand = conv(operand);
    ensure_lvalue(operand);
    return ast_uop(op, operand->ty, operand);
}
