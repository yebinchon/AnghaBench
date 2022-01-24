#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* priv; int /*<<< orphan*/ ** outputs; int /*<<< orphan*/ ** inputs; } ;
struct TYPE_4__ {int /*<<< orphan*/  winlen; } ;
typedef  TYPE_1__ SuperEqualizerContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  int /*<<< orphan*/  AVFilterLink ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FFERROR_NOT_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(AVFilterContext *ctx)
{
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    SuperEqualizerContext *s = ctx->priv;
    AVFrame *in = NULL;
    int ret;

    FUNC1(outlink, inlink);

    ret = FUNC3(inlink, s->winlen, s->winlen, &in);
    if (ret < 0)
        return ret;
    if (ret > 0)
        return FUNC4(inlink, in);

    FUNC0(inlink, outlink);
    FUNC2(outlink, inlink);

    return FFERROR_NOT_READY;
}