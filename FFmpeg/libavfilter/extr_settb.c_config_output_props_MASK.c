#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_3__** inputs; TYPE_1__* priv; } ;
struct TYPE_11__ {scalar_t__ num; scalar_t__ den; } ;
struct TYPE_12__ {TYPE_2__ time_base; TYPE_4__* src; int /*<<< orphan*/  h; int /*<<< orphan*/  w; void* sample_rate; } ;
struct TYPE_10__ {int /*<<< orphan*/  tb_expr; void** var_values; } ;
typedef  TYPE_1__ SetTBContext ;
typedef  TYPE_2__ AVRational ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 TYPE_2__ AV_TIME_BASE_Q ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  INT_MAX ; 
 size_t VAR_AVTB ; 
 size_t VAR_INTB ; 
 size_t VAR_SR ; 
 TYPE_2__ FUNC1 (double,int /*<<< orphan*/ ) ; 
 int FUNC2 (double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 void* FUNC4 (TYPE_2__) ; 
 int /*<<< orphan*/  var_names ; 

__attribute__((used)) static int FUNC5(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    SetTBContext *settb = ctx->priv;
    AVFilterLink *inlink = ctx->inputs[0];
    AVRational time_base;
    int ret;
    double res;

    settb->var_values[VAR_AVTB] = FUNC4(AV_TIME_BASE_Q);
    settb->var_values[VAR_INTB] = FUNC4(inlink->time_base);
    settb->var_values[VAR_SR]   = inlink->sample_rate;

    outlink->w = inlink->w;
    outlink->h = inlink->h;

    if ((ret = FUNC2(&res, settb->tb_expr, var_names, settb->var_values,
                                      NULL, NULL, NULL, NULL, NULL, 0, NULL)) < 0) {
        FUNC3(ctx, AV_LOG_ERROR, "Invalid expression '%s' for timebase.\n", settb->tb_expr);
        return ret;
    }
    time_base = FUNC1(res, INT_MAX);
    if (time_base.num <= 0 || time_base.den <= 0) {
        FUNC3(ctx, AV_LOG_ERROR,
               "Invalid non-positive values for the timebase num:%d or den:%d.\n",
               time_base.num, time_base.den);
        return FUNC0(EINVAL);
    }

    outlink->time_base = time_base;
    FUNC3(outlink->src, AV_LOG_VERBOSE, "tb:%d/%d -> tb:%d/%d\n",
           inlink ->time_base.num, inlink ->time_base.den,
           outlink->time_base.num, outlink->time_base.den);

    return 0;
}