#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* priv; } ;
struct TYPE_10__ {scalar_t__ eval_mode; int /*<<< orphan*/  gamma_weight_expr; int /*<<< orphan*/  gamma_weight_pexpr; int /*<<< orphan*/  gamma_b_expr; int /*<<< orphan*/  gamma_b_pexpr; int /*<<< orphan*/  gamma_g_expr; int /*<<< orphan*/  gamma_g_pexpr; int /*<<< orphan*/  gamma_r_expr; int /*<<< orphan*/  gamma_r_pexpr; int /*<<< orphan*/  gamma_expr; int /*<<< orphan*/  gamma_pexpr; int /*<<< orphan*/  saturation_expr; int /*<<< orphan*/  saturation_pexpr; int /*<<< orphan*/  brightness_expr; int /*<<< orphan*/  brightness_pexpr; int /*<<< orphan*/  contrast_expr; int /*<<< orphan*/  contrast_pexpr; } ;
typedef  TYPE_1__ EQContext ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 scalar_t__ EVAL_MODE_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(AVFilterContext *ctx)
{
    EQContext *eq = ctx->priv;
    int ret;
    FUNC0(eq);

    if ((ret = FUNC3(&eq->contrast_pexpr,     eq->contrast_expr,     "contrast",     ctx)) < 0 ||
        (ret = FUNC3(&eq->brightness_pexpr,   eq->brightness_expr,   "brightness",   ctx)) < 0 ||
        (ret = FUNC3(&eq->saturation_pexpr,   eq->saturation_expr,   "saturation",   ctx)) < 0 ||
        (ret = FUNC3(&eq->gamma_pexpr,        eq->gamma_expr,        "gamma",        ctx)) < 0 ||
        (ret = FUNC3(&eq->gamma_r_pexpr,      eq->gamma_r_expr,      "gamma_r",      ctx)) < 0 ||
        (ret = FUNC3(&eq->gamma_g_pexpr,      eq->gamma_g_expr,      "gamma_g",      ctx)) < 0 ||
        (ret = FUNC3(&eq->gamma_b_pexpr,      eq->gamma_b_expr,      "gamma_b",      ctx)) < 0 ||
        (ret = FUNC3(&eq->gamma_weight_pexpr, eq->gamma_weight_expr, "gamma_weight", ctx)) < 0 )
        return ret;

    if (eq->eval_mode == EVAL_MODE_INIT) {
        FUNC4(eq);
        FUNC2(eq);
        FUNC1(eq);
        FUNC5(eq);
    }

    return 0;
}