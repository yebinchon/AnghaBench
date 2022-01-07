
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Operand ;
typedef int Expr ;


 int resolve_expected_expr (int *,int *) ;

Operand resolve_expr(Expr *expr) {
    return resolve_expected_expr(expr, ((void*)0));
}
