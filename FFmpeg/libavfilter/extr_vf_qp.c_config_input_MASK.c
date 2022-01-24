#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {int h; int w; TYPE_3__* dst; } ;
struct TYPE_6__ {int h; int qstride; int evaluate_per_mb; int /*<<< orphan*/ * lut; int /*<<< orphan*/  qp_expr_str; } ;
typedef  TYPE_1__ QPContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVExpr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int NAN ; 
 double FUNC1 (int /*<<< orphan*/ *,double*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC4 (double) ; 
 int /*<<< orphan*/  FUNC5 (double) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static int FUNC7(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    QPContext *s = ctx->priv;
    int i;
    int ret;
    AVExpr *e = NULL;
    static const char *var_names[] = { "known", "qp", "x", "y", "w", "h", NULL };

    if (!s->qp_expr_str)
        return 0;

    ret = FUNC3(&e, s->qp_expr_str, var_names, NULL, NULL, NULL, NULL, 0, ctx);
    if (ret < 0)
        return ret;

    s->h       = (inlink->h + 15) >> 4;
    s->qstride = (inlink->w + 15) >> 4;
    for (i = -129; i < 128; i++) {
        double var_values[] = { i != -129, i, NAN, NAN, s->qstride, s->h, 0};
        double temp_val = FUNC1(e, var_values, NULL);

        if (FUNC4(temp_val)) {
            if(FUNC6(s->qp_expr_str, 'x') || FUNC6(s->qp_expr_str, 'y'))
                s->evaluate_per_mb = 1;
            else {
                FUNC2(e);
                return FUNC0(EINVAL);
            }
        }

        s->lut[i + 129] = FUNC5(temp_val);
    }
    FUNC2(e);

    return 0;
}