#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_1__** inputs; TYPE_2__* priv; } ;
struct TYPE_15__ {int /*<<< orphan*/  format; TYPE_5__* dst; } ;
struct TYPE_14__ {int log2_chroma_w; int log2_chroma_h; } ;
struct TYPE_13__ {int* var_values; int overlay_is_packed_rgb; scalar_t__ eval_mode; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  overlay_has_alpha; int /*<<< orphan*/  overlay_rgba_map; int /*<<< orphan*/  y_expr; int /*<<< orphan*/  y_pexpr; int /*<<< orphan*/  x_expr; int /*<<< orphan*/  x_pexpr; int /*<<< orphan*/  overlay_pix_step; } ;
struct TYPE_12__ {int w; int h; int /*<<< orphan*/  format; } ;
typedef  TYPE_2__ OverlayContext ;
typedef  TYPE_3__ AVPixFmtDescriptor ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
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
 int /*<<< orphan*/  alpha_pix_fmts ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,char*,int,int,int,int,...) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_5__*) ; 

__attribute__((used)) static int FUNC8(AVFilterLink *inlink)
{
    AVFilterContext *ctx  = inlink->dst;
    OverlayContext  *s = inlink->dst->priv;
    int ret;
    const AVPixFmtDescriptor *pix_desc = FUNC3(inlink->format);

    FUNC1(s->overlay_pix_step, NULL, pix_desc);

    /* Finish the configuration by evaluating the expressions
       now when both inputs are configured. */
    s->var_values[VAR_MAIN_W   ] = s->var_values[VAR_MW] = ctx->inputs[MAIN   ]->w;
    s->var_values[VAR_MAIN_H   ] = s->var_values[VAR_MH] = ctx->inputs[MAIN   ]->h;
    s->var_values[VAR_OVERLAY_W] = s->var_values[VAR_OW] = ctx->inputs[OVERLAY]->w;
    s->var_values[VAR_OVERLAY_H] = s->var_values[VAR_OH] = ctx->inputs[OVERLAY]->h;
    s->var_values[VAR_HSUB]  = 1<<pix_desc->log2_chroma_w;
    s->var_values[VAR_VSUB]  = 1<<pix_desc->log2_chroma_h;
    s->var_values[VAR_X]     = NAN;
    s->var_values[VAR_Y]     = NAN;
    s->var_values[VAR_N]     = 0;
    s->var_values[VAR_T]     = NAN;
    s->var_values[VAR_POS]   = NAN;

    if ((ret = FUNC7(&s->x_pexpr,      s->x_expr,      "x",      ctx)) < 0 ||
        (ret = FUNC7(&s->y_pexpr,      s->y_expr,      "y",      ctx)) < 0)
        return ret;

    s->overlay_is_packed_rgb =
        FUNC5(s->overlay_rgba_map, inlink->format) >= 0;
    s->overlay_has_alpha = FUNC6(inlink->format, alpha_pix_fmts);

    if (s->eval_mode == EVAL_MODE_INIT) {
        FUNC4(ctx);
        FUNC2(ctx, AV_LOG_VERBOSE, "x:%f xi:%d y:%f yi:%d\n",
               s->var_values[VAR_X], s->x,
               s->var_values[VAR_Y], s->y);
    }

    FUNC2(ctx, AV_LOG_VERBOSE,
           "main w:%d h:%d fmt:%s overlay w:%d h:%d fmt:%s\n",
           ctx->inputs[MAIN]->w, ctx->inputs[MAIN]->h,
           FUNC0(ctx->inputs[MAIN]->format),
           ctx->inputs[OVERLAY]->w, ctx->inputs[OVERLAY]->h,
           FUNC0(ctx->inputs[OVERLAY]->format));
    return 0;
}