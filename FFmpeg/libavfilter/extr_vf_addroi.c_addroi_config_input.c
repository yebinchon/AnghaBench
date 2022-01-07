
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {double w; double h; TYPE_3__* dst; } ;
struct TYPE_6__ {int* region; int * region_expr; } ;
typedef TYPE_1__ AddROIContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AV_LOG_WARNING ;

 int NB_PARAMS ;
 int NB_VARS ;
 size_t VAR_IH ;
 size_t VAR_IW ;



 int * addroi_param_names ;
 double av_expr_eval (int ,double*,int *) ;
 int av_log (TYPE_3__*,int ,char*,double,int ,...) ;

__attribute__((used)) static int addroi_config_input(AVFilterLink *inlink)
{
    AVFilterContext *avctx = inlink->dst;
    AddROIContext *ctx = avctx->priv;
    int i;
    double vars[NB_VARS];
    double val;

    vars[VAR_IW] = inlink->w;
    vars[VAR_IH] = inlink->h;

    for (i = 0; i < NB_PARAMS; i++) {
        int max_value;
        switch (i) {
        case 129: max_value = inlink->w; break;
        case 128: max_value = inlink->h; break;
        case 130: max_value = inlink->w - ctx->region[129]; break;
        case 131: max_value = inlink->h - ctx->region[128]; break;
        }

        val = av_expr_eval(ctx->region_expr[i], vars, ((void*)0));
        if (val < 0.0) {
            av_log(avctx, AV_LOG_WARNING, "Calculated value %g for %s is "
                   "less than zero - using zero instead.\n", val,
                   addroi_param_names[i]);
            val = 0.0;
        } else if (val > max_value) {
            av_log(avctx, AV_LOG_WARNING, "Calculated value %g for %s is "
                   "greater than maximum allowed value %d - "
                   "using %d instead.\n", val, addroi_param_names[i],
                   max_value, max_value);
            val = max_value;
        }
        ctx->region[i] = val;
    }

    return 0;
}
