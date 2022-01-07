
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Expr ;


 int * parse_expr_ternary () ;

Expr *parse_expr(void) {
    return parse_expr_ternary();
}
