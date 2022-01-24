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
struct TYPE_4__ {scalar_t__ nb_samples; } ;
typedef  TYPE_1__ SOFAlizerContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  int /*<<< orphan*/  AVFilterLink ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FFERROR_NOT_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(AVFilterContext *ctx)
{
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    SOFAlizerContext *s = ctx->priv;
    AVFrame *in;
    int ret;

    FUNC1(outlink, inlink);

    if (s->nb_samples)
        ret = FUNC4(inlink, s->nb_samples, s->nb_samples, &in);
    else
        ret = FUNC3(inlink, &in);
    if (ret < 0)
        return ret;
    if (ret > 0)
        return FUNC5(inlink, in);

    FUNC0(inlink, outlink);
    FUNC2(outlink, inlink);

    return FFERROR_NOT_READY;
}