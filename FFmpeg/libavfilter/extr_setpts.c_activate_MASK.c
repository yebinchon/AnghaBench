#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_18__ {TYPE_2__** outputs; TYPE_2__** inputs; TYPE_1__* priv; } ;
struct TYPE_17__ {int /*<<< orphan*/  time_base; } ;
struct TYPE_16__ {double* var_values; } ;
typedef  TYPE_1__ SetPTSContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (double) ; 
 int FFERROR_NOT_READY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (double,int /*<<< orphan*/ ) ; 
 size_t VAR_POS ; 
 size_t VAR_PTS ; 
 size_t VAR_T ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,double,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (double) ; 
 double FUNC6 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(AVFilterContext *ctx)
{
    SetPTSContext *setpts = ctx->priv;
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *in;
    int status;
    int64_t pts;
    int ret;

    FUNC1(outlink, inlink);

    ret = FUNC8(inlink, &in);
    if (ret < 0)
        return ret;
    if (ret > 0)
        return FUNC10(inlink, in);

    if (FUNC7(inlink, &status, &pts)) {
        double d = FUNC6(setpts, inlink, NULL, pts);

        FUNC4(ctx, AV_LOG_TRACE, "N:EOF PTS:%s T:%f POS:%s -> PTS:%s T:%f\n",
               FUNC5(setpts->var_values[VAR_PTS]),
               setpts->var_values[VAR_T],
               FUNC5(setpts->var_values[VAR_POS]),
               FUNC5(d), FUNC3(d, inlink->time_base));
        FUNC9(outlink, status, FUNC0(d));
        return 0;
    }

    FUNC2(outlink, inlink);

    return FFERROR_NOT_READY;
}