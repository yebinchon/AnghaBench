#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {TYPE_2__* priv; } ;
struct TYPE_15__ {double den; scalar_t__ num; } ;
struct TYPE_19__ {double w; double h; TYPE_1__ sample_aspect_ratio; int /*<<< orphan*/  format; TYPE_6__* dst; } ;
struct TYPE_18__ {int log2_chroma_w; int log2_chroma_h; } ;
struct TYPE_17__ {scalar_t__ num; scalar_t__ den; } ;
struct TYPE_16__ {int /*<<< orphan*/  ratio_expr; int /*<<< orphan*/  max; } ;
typedef  TYPE_2__ AspectContext ;
typedef  TYPE_3__ AVRational ;
typedef  TYPE_4__ AVPixFmtDescriptor ;
typedef  TYPE_5__ AVFilterLink ;
typedef  TYPE_6__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int VARS_NB ; 
 size_t VAR_A ; 
 size_t VAR_DAR ; 
 size_t VAR_H ; 
 size_t VAR_HSUB ; 
 size_t VAR_SAR ; 
 size_t VAR_VSUB ; 
 size_t VAR_W ; 
 TYPE_3__ FUNC1 (double,int /*<<< orphan*/ ) ; 
 int FUNC2 (double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  var_names ; 

__attribute__((used)) static int FUNC6(AVFilterLink *inlink, AVRational *aspect_ratio)
{
    AVFilterContext *ctx = inlink->dst;
    AspectContext *s = inlink->dst->priv;
    const AVPixFmtDescriptor *desc = FUNC5(inlink->format);
    double var_values[VARS_NB], res;
    int ret;

    var_values[VAR_W]     = inlink->w;
    var_values[VAR_H]     = inlink->h;
    var_values[VAR_A]     = (double) inlink->w / inlink->h;
    var_values[VAR_SAR]   = inlink->sample_aspect_ratio.num ?
        (double) inlink->sample_aspect_ratio.num / inlink->sample_aspect_ratio.den : 1;
    var_values[VAR_DAR]   = var_values[VAR_A] * var_values[VAR_SAR];
    var_values[VAR_HSUB]  = 1 << desc->log2_chroma_w;
    var_values[VAR_VSUB]  = 1 << desc->log2_chroma_h;

    /* evaluate new aspect ratio*/
    ret = FUNC2(&res, s->ratio_expr,
                                      var_names, var_values,
                                      NULL, NULL, NULL, NULL, NULL, 0, ctx);
    if (ret < 0) {
        ret = FUNC4(aspect_ratio, s->ratio_expr, s->max, 0, ctx);
    } else
        *aspect_ratio = FUNC1(res, s->max);

    if (ret < 0) {
        FUNC3(ctx, AV_LOG_ERROR,
               "Error when evaluating the expression '%s'\n", s->ratio_expr);
        return ret;
    }
    if (aspect_ratio->num < 0 || aspect_ratio->den <= 0) {
        FUNC3(ctx, AV_LOG_ERROR,
                "Invalid string '%s' for aspect ratio\n", s->ratio_expr);
        return FUNC0(EINVAL);
    }
    return 0;
}