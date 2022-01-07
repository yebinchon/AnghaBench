
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int vsub; void** var_values; void* y; int hsub; void* x; int x_pexpr; int y_pexpr; } ;
typedef TYPE_1__ OverlayContext ;
typedef TYPE_2__ AVFilterContext ;


 size_t VAR_X ;
 size_t VAR_Y ;
 void* av_expr_eval (int ,void**,int *) ;
 void* normalize_xy (void*,int ) ;

__attribute__((used)) static void eval_expr(AVFilterContext *ctx)
{
    OverlayContext *s = ctx->priv;

    s->var_values[VAR_X] = av_expr_eval(s->x_pexpr, s->var_values, ((void*)0));
    s->var_values[VAR_Y] = av_expr_eval(s->y_pexpr, s->var_values, ((void*)0));

    s->var_values[VAR_X] = av_expr_eval(s->x_pexpr, s->var_values, ((void*)0));
    s->x = normalize_xy(s->var_values[VAR_X], s->hsub);
    s->y = normalize_xy(s->var_values[VAR_Y], s->vsub);
}
