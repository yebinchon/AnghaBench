
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {int h; int w; TYPE_3__* dst; } ;
struct TYPE_6__ {int h; int qstride; int evaluate_per_mb; int * lut; int qp_expr_str; } ;
typedef TYPE_1__ QPContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;
typedef int AVExpr ;


 int AVERROR (int ) ;
 int EINVAL ;
 int NAN ;
 double av_expr_eval (int *,double*,int *) ;
 int av_expr_free (int *) ;
 int av_expr_parse (int **,int ,char const**,int *,int *,int *,int *,int ,TYPE_3__*) ;
 scalar_t__ isnan (double) ;
 int lrintf (double) ;
 scalar_t__ strchr (int ,char) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    QPContext *s = ctx->priv;
    int i;
    int ret;
    AVExpr *e = ((void*)0);
    static const char *var_names[] = { "known", "qp", "x", "y", "w", "h", ((void*)0) };

    if (!s->qp_expr_str)
        return 0;

    ret = av_expr_parse(&e, s->qp_expr_str, var_names, ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0, ctx);
    if (ret < 0)
        return ret;

    s->h = (inlink->h + 15) >> 4;
    s->qstride = (inlink->w + 15) >> 4;
    for (i = -129; i < 128; i++) {
        double var_values[] = { i != -129, i, NAN, NAN, s->qstride, s->h, 0};
        double temp_val = av_expr_eval(e, var_values, ((void*)0));

        if (isnan(temp_val)) {
            if(strchr(s->qp_expr_str, 'x') || strchr(s->qp_expr_str, 'y'))
                s->evaluate_per_mb = 1;
            else {
                av_expr_free(e);
                return AVERROR(EINVAL);
            }
        }

        s->lut[i + 129] = lrintf(temp_val);
    }
    av_expr_free(e);

    return 0;
}
