
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Expr ;


 char* gen_buf ;
 int gen_expr (int *) ;

const char *gen_expr_str(Expr *expr) {
    char *temp = gen_buf;
    gen_buf = ((void*)0);
    gen_expr(expr);
    const char *result = gen_buf;
    gen_buf = temp;
    return result;
}
