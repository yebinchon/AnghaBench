
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int TokenSuffix ;
typedef int TokenMod ;
struct TYPE_5__ {unsigned long long val; int suffix; int mod; } ;
struct TYPE_6__ {TYPE_1__ int_lit; } ;
typedef int SrcPos ;
typedef TYPE_2__ Expr ;


 int EXPR_INT ;
 TYPE_2__* new_expr (int ,int ) ;

Expr *new_expr_int(SrcPos pos, unsigned long long val, TokenMod mod, TokenSuffix suffix) {
    Expr *e = new_expr(EXPR_INT, pos);
    e->int_lit.val = val;
    e->int_lit.mod = mod;
    e->int_lit.suffix = suffix;
    return e;
}
