
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {TYPE_1__** inputs; TYPE_2__* priv; } ;
struct TYPE_15__ {int format; TYPE_5__* dst; } ;
struct TYPE_14__ {int log2_chroma_w; int log2_chroma_h; } ;
struct TYPE_13__ {int* var_values; int overlay_is_packed_rgb; scalar_t__ eval_mode; int y; int x; int overlay_has_alpha; int overlay_rgba_map; int y_expr; int y_pexpr; int x_expr; int x_pexpr; int overlay_pix_step; } ;
struct TYPE_12__ {int w; int h; int format; } ;
typedef TYPE_2__ OverlayContext ;
typedef TYPE_3__ AVPixFmtDescriptor ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AV_LOG_VERBOSE ;
 scalar_t__ EVAL_MODE_INIT ;
 size_t MAIN ;
 void* NAN ;
 size_t OVERLAY ;
 size_t VAR_HSUB ;
 size_t VAR_MAIN_H ;
 size_t VAR_MAIN_W ;
 size_t VAR_MH ;
 size_t VAR_MW ;
 size_t VAR_N ;
 size_t VAR_OH ;
 size_t VAR_OVERLAY_H ;
 size_t VAR_OVERLAY_W ;
 size_t VAR_OW ;
 size_t VAR_POS ;
 size_t VAR_T ;
 size_t VAR_VSUB ;
 size_t VAR_X ;
 size_t VAR_Y ;
 int alpha_pix_fmts ;
 int av_get_pix_fmt_name (int ) ;
 int av_image_fill_max_pixsteps (int ,int *,TYPE_3__ const*) ;
 int av_log (TYPE_5__*,int ,char*,int,int,int,int,...) ;
 TYPE_3__* av_pix_fmt_desc_get (int ) ;
 int eval_expr (TYPE_5__*) ;
 scalar_t__ ff_fill_rgba_map (int ,int ) ;
 int ff_fmt_is_in (int ,int ) ;
 int set_expr (int *,int ,char*,TYPE_5__*) ;

__attribute__((used)) static int config_input_overlay(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    OverlayContext *s = inlink->dst->priv;
    int ret;
    const AVPixFmtDescriptor *pix_desc = av_pix_fmt_desc_get(inlink->format);

    av_image_fill_max_pixsteps(s->overlay_pix_step, ((void*)0), pix_desc);



    s->var_values[VAR_MAIN_W ] = s->var_values[VAR_MW] = ctx->inputs[MAIN ]->w;
    s->var_values[VAR_MAIN_H ] = s->var_values[VAR_MH] = ctx->inputs[MAIN ]->h;
    s->var_values[VAR_OVERLAY_W] = s->var_values[VAR_OW] = ctx->inputs[OVERLAY]->w;
    s->var_values[VAR_OVERLAY_H] = s->var_values[VAR_OH] = ctx->inputs[OVERLAY]->h;
    s->var_values[VAR_HSUB] = 1<<pix_desc->log2_chroma_w;
    s->var_values[VAR_VSUB] = 1<<pix_desc->log2_chroma_h;
    s->var_values[VAR_X] = NAN;
    s->var_values[VAR_Y] = NAN;
    s->var_values[VAR_N] = 0;
    s->var_values[VAR_T] = NAN;
    s->var_values[VAR_POS] = NAN;

    if ((ret = set_expr(&s->x_pexpr, s->x_expr, "x", ctx)) < 0 ||
        (ret = set_expr(&s->y_pexpr, s->y_expr, "y", ctx)) < 0)
        return ret;

    s->overlay_is_packed_rgb =
        ff_fill_rgba_map(s->overlay_rgba_map, inlink->format) >= 0;
    s->overlay_has_alpha = ff_fmt_is_in(inlink->format, alpha_pix_fmts);

    if (s->eval_mode == EVAL_MODE_INIT) {
        eval_expr(ctx);
        av_log(ctx, AV_LOG_VERBOSE, "x:%f xi:%d y:%f yi:%d\n",
               s->var_values[VAR_X], s->x,
               s->var_values[VAR_Y], s->y);
    }

    av_log(ctx, AV_LOG_VERBOSE,
           "main w:%d h:%d fmt:%s overlay w:%d h:%d fmt:%s\n",
           ctx->inputs[MAIN]->w, ctx->inputs[MAIN]->h,
           av_get_pix_fmt_name(ctx->inputs[MAIN]->format),
           ctx->inputs[OVERLAY]->w, ctx->inputs[OVERLAY]->h,
           av_get_pix_fmt_name(ctx->inputs[OVERLAY]->format));
    return 0;
}
