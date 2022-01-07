
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_10__ {TYPE_1__* priv; } ;
struct TYPE_9__ {TYPE_3__* src; } ;
struct TYPE_8__ {int depth; int depthx; int depthy; int nb_planes; int nb_planesx; int odepth; double** lut; int* var_values; int * comp_expr_str; int ** comp_expr; void* lut2; } ;
typedef TYPE_1__ LUT2Context ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 size_t VAR_X ;
 size_t VAR_Y ;
 double av_expr_eval (int *,int*,TYPE_1__*) ;
 int av_expr_free (int *) ;
 int av_expr_parse (int **,int ,int ,int *,int *,int *,int *,int ,TYPE_3__*) ;
 int av_log (TYPE_3__*,int ,char*,int ,int,...) ;
 double* av_malloc_array (int,int) ;
 scalar_t__ isnan (double) ;
 void* lut2_16_16_16 ;
 void* lut2_16_16_8 ;
 void* lut2_16_8_16 ;
 void* lut2_16_8_8 ;
 void* lut2_8_16_16 ;
 void* lut2_8_16_8 ;
 void* lut2_8_8_16 ;
 void* lut2_8_8_8 ;
 int var_names ;

__attribute__((used)) static int config_output(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    LUT2Context *s = ctx->priv;
    int p, ret;

    s->depth = s->depthx + s->depthy;
    s->nb_planes = s->nb_planesx;

    s->lut2 = s->depth > 16 ? lut2_16_16_16 : lut2_8_8_8;
    if (s->odepth) {
        if (s->depthx == 8 && s->depthy == 8 && s->odepth > 8)
            s->lut2 = lut2_16_8_8;
        if (s->depthx > 8 && s->depthy == 8 && s->odepth > 8)
            s->lut2 = lut2_16_16_8;
        if (s->depthx == 8 && s->depthy > 8 && s->odepth > 8)
            s->lut2 = lut2_16_8_16;
        if (s->depthx == 8 && s->depthy == 8 && s->odepth == 8)
            s->lut2 = lut2_8_8_8;
        if (s->depthx > 8 && s->depthy == 8 && s->odepth == 8)
            s->lut2 = lut2_8_16_8;
        if (s->depthx == 8 && s->depthy > 8 && s->odepth == 8)
            s->lut2 = lut2_8_8_16;
        if (s->depthx > 8 && s->depthy > 8 && s->odepth == 8)
            s->lut2 = lut2_8_16_16;
    } else {
        s->odepth = s->depthx;
    }

    for (p = 0; p < s->nb_planes; p++) {
        s->lut[p] = av_malloc_array(1 << s->depth, sizeof(uint16_t));
        if (!s->lut[p])
            return AVERROR(ENOMEM);
    }

    for (p = 0; p < s->nb_planes; p++) {
        double res;
        int x, y;


        av_expr_free(s->comp_expr[p]);
        s->comp_expr[p] = ((void*)0);
        ret = av_expr_parse(&s->comp_expr[p], s->comp_expr_str[p],
                            var_names, ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0, ctx);
        if (ret < 0) {
            av_log(ctx, AV_LOG_ERROR,
                   "Error when parsing the expression '%s' for the component %d.\n",
                   s->comp_expr_str[p], p);
            return AVERROR(EINVAL);
        }


        for (y = 0; y < (1 << s->depthy); y++) {
            s->var_values[VAR_Y] = y;
            for (x = 0; x < (1 << s->depthx); x++) {
                s->var_values[VAR_X] = x;
                res = av_expr_eval(s->comp_expr[p], s->var_values, s);
                if (isnan(res)) {
                    av_log(ctx, AV_LOG_ERROR,
                           "Error when evaluating the expression '%s' for the values %d and %d for the component %d.\n",
                           s->comp_expr_str[p], x, y, p);
                    return AVERROR(EINVAL);
                }

                s->lut[p][(y << s->depthx) + x] = res;
            }
        }
    }

    return 0;
}
