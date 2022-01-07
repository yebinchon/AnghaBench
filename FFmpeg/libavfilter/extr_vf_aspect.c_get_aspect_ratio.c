
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_20__ {TYPE_2__* priv; } ;
struct TYPE_15__ {double den; scalar_t__ num; } ;
struct TYPE_19__ {double w; double h; TYPE_1__ sample_aspect_ratio; int format; TYPE_6__* dst; } ;
struct TYPE_18__ {int log2_chroma_w; int log2_chroma_h; } ;
struct TYPE_17__ {scalar_t__ num; scalar_t__ den; } ;
struct TYPE_16__ {int ratio_expr; int max; } ;
typedef TYPE_2__ AspectContext ;
typedef TYPE_3__ AVRational ;
typedef TYPE_4__ AVPixFmtDescriptor ;
typedef TYPE_5__ AVFilterLink ;
typedef TYPE_6__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int VARS_NB ;
 size_t VAR_A ;
 size_t VAR_DAR ;
 size_t VAR_H ;
 size_t VAR_HSUB ;
 size_t VAR_SAR ;
 size_t VAR_VSUB ;
 size_t VAR_W ;
 TYPE_3__ av_d2q (double,int ) ;
 int av_expr_parse_and_eval (double*,int ,int ,double*,int *,int *,int *,int *,int *,int ,TYPE_6__*) ;
 int av_log (TYPE_6__*,int ,char*,int ) ;
 int av_parse_ratio (TYPE_3__*,int ,int ,int ,TYPE_6__*) ;
 TYPE_4__* av_pix_fmt_desc_get (int ) ;
 int var_names ;

__attribute__((used)) static int get_aspect_ratio(AVFilterLink *inlink, AVRational *aspect_ratio)
{
    AVFilterContext *ctx = inlink->dst;
    AspectContext *s = inlink->dst->priv;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);
    double var_values[VARS_NB], res;
    int ret;

    var_values[VAR_W] = inlink->w;
    var_values[VAR_H] = inlink->h;
    var_values[VAR_A] = (double) inlink->w / inlink->h;
    var_values[VAR_SAR] = inlink->sample_aspect_ratio.num ?
        (double) inlink->sample_aspect_ratio.num / inlink->sample_aspect_ratio.den : 1;
    var_values[VAR_DAR] = var_values[VAR_A] * var_values[VAR_SAR];
    var_values[VAR_HSUB] = 1 << desc->log2_chroma_w;
    var_values[VAR_VSUB] = 1 << desc->log2_chroma_h;


    ret = av_expr_parse_and_eval(&res, s->ratio_expr,
                                      var_names, var_values,
                                      ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0, ctx);
    if (ret < 0) {
        ret = av_parse_ratio(aspect_ratio, s->ratio_expr, s->max, 0, ctx);
    } else
        *aspect_ratio = av_d2q(res, s->max);

    if (ret < 0) {
        av_log(ctx, AV_LOG_ERROR,
               "Error when evaluating the expression '%s'\n", s->ratio_expr);
        return ret;
    }
    if (aspect_ratio->num < 0 || aspect_ratio->den <= 0) {
        av_log(ctx, AV_LOG_ERROR,
                "Invalid string '%s' for aspect ratio\n", s->ratio_expr);
        return AVERROR(EINVAL);
    }
    return 0;
}
