
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int var; } ;
struct TYPE_6__ {double const* const_values; void* opaque; int var; int member_0; } ;
typedef TYPE_1__ Parser ;
typedef TYPE_2__ AVExpr ;


 double eval_expr (TYPE_1__*,TYPE_2__*) ;

double av_expr_eval(AVExpr *e, const double *const_values, void *opaque)
{
    Parser p = { 0 };
    p.var= e->var;

    p.const_values = const_values;
    p.opaque = opaque;
    return eval_expr(&p, e);
}
