
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Expr ;


 int gen_expr (int *) ;
 int genf (char*) ;

void gen_paren_expr(Expr *expr) {
    genf("(");
    gen_expr(expr);
    genf(")");
}
