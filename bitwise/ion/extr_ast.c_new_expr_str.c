
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int TokenMod ;
struct TYPE_5__ {char const* val; int mod; } ;
struct TYPE_6__ {TYPE_1__ str_lit; } ;
typedef int SrcPos ;
typedef TYPE_2__ Expr ;


 int EXPR_STR ;
 TYPE_2__* new_expr (int ,int ) ;

Expr *new_expr_str(SrcPos pos, const char *val, TokenMod mod) {
    Expr *e = new_expr(EXPR_STR, pos);
    e->str_lit.val = val;
    e->str_lit.mod = mod;
    return e;
}
