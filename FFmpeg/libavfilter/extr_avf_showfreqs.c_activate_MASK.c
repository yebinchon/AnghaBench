#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* priv; int /*<<< orphan*/ ** outputs; int /*<<< orphan*/ ** inputs; } ;
struct TYPE_8__ {scalar_t__ pts; int /*<<< orphan*/  nb_samples; scalar_t__ extended_data; } ;
struct TYPE_7__ {scalar_t__ win_size; scalar_t__ pts; int /*<<< orphan*/  fifo; } ;
typedef  TYPE_1__ ShowFreqsContext ;
typedef  TYPE_2__ AVFrame ;
typedef  int /*<<< orphan*/  AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 scalar_t__ AV_NOPTS_VALUE ; 
 int FFERROR_NOT_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,TYPE_2__**) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(AVFilterContext *ctx)
{
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    ShowFreqsContext *s = ctx->priv;
    AVFrame *in = NULL;
    int ret = 0;

    FUNC1(outlink, inlink);

    if (FUNC3(s->fifo) < s->win_size)
        ret = FUNC6(inlink, s->win_size, s->win_size, &in);
    if (ret < 0)
        return ret;
    if (ret > 0) {
        FUNC4(s->fifo, (void **)in->extended_data, in->nb_samples);
        if (s->pts == AV_NOPTS_VALUE)
            s->pts = in->pts;
        FUNC5(&in);
    }

    if (FUNC3(s->fifo) >= s->win_size) {
        ret = FUNC7(inlink);
        if (ret <= 0)
            return ret;
    }

    FUNC0(inlink, outlink);
    FUNC2(outlink, inlink);

    return FFERROR_NOT_READY;
}