#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_3__ {int /*<<< orphan*/ ** outputs; int /*<<< orphan*/ ** inputs; } ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  int /*<<< orphan*/  AVFilterLink ;
typedef  TYPE_1__ AVFilterContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int FFERROR_NOT_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(AVFilterContext *ctx)
{
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *in;
    int64_t pts;
    int ret, status;

    FUNC0(outlink, inlink);

    ret = FUNC3(inlink, &in);
    if (ret < 0)
        return ret;
    if (ret > 0)
        return FUNC5(inlink, in);

    if (FUNC2(inlink, &status, &pts)) {
        if (status == AVERROR_EOF) {
            int64_t out_pts = pts;

            ret = FUNC6(outlink, pts, &out_pts);
            FUNC4(outlink, status, out_pts);
            return ret;
        }
    }

    FUNC1(outlink, inlink);

    return FFERROR_NOT_READY;
}