
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ kind; int ty; } ;
typedef TYPE_1__ Node ;


 int AST_ADDR ;
 scalar_t__ AST_FUNCDESG ;
 TYPE_1__* ast_uop (int ,int ,TYPE_1__*) ;
 TYPE_1__* conv (TYPE_1__*) ;
 int ensure_lvalue (TYPE_1__*) ;
 int make_ptr_type (int ) ;
 TYPE_1__* read_cast_expr () ;

__attribute__((used)) static Node *read_unary_addr() {
    Node *operand = read_cast_expr();
    if (operand->kind == AST_FUNCDESG)
        return conv(operand);
    ensure_lvalue(operand);
    return ast_uop(AST_ADDR, make_ptr_type(operand->ty), operand);
}
