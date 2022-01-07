
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int TokenSuffix ;
struct TYPE_5__ {char const* start; char const* end; double val; int suffix; } ;
struct TYPE_6__ {TYPE_1__ float_lit; } ;
typedef int SrcPos ;
typedef TYPE_2__ Expr ;


 int EXPR_FLOAT ;
 TYPE_2__* new_expr (int ,int ) ;

Expr *new_expr_float(SrcPos pos, const char *start, const char *end, double val, TokenSuffix suffix) {
    Expr *e = new_expr(EXPR_FLOAT, pos);
    e->float_lit.start = start;
    e->float_lit.end = end;
    e->float_lit.val = val;
    e->float_lit.suffix = suffix;
    return e;
}
