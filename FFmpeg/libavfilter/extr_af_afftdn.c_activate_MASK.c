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
struct TYPE_7__ {scalar_t__ pts; scalar_t__ window_length; int /*<<< orphan*/  fifo; } ;
typedef  TYPE_1__ AudioFFTDeNoiseContext ;
typedef  TYPE_2__ AVFrame ;
typedef  int /*<<< orphan*/  AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 scalar_t__ AV_NOPTS_VALUE ; 
 int FFERROR_NOT_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(AVFilterContext *ctx)
{
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    AudioFFTDeNoiseContext *s = ctx->priv;
    AVFrame *frame = NULL;
    int ret;

    FUNC1(outlink, inlink);

    ret = FUNC5(inlink, &frame);
    if (ret < 0)
        return ret;

    if (ret > 0) {
        if (s->pts == AV_NOPTS_VALUE)
            s->pts = frame->pts;

        ret = FUNC3(s->fifo, (void **)frame->extended_data, frame->nb_samples);
        FUNC4(&frame);
        if (ret < 0)
            return ret;
    }

    if (FUNC2(s->fifo) >= s->window_length)
        return FUNC8(inlink);

    FUNC0(inlink, outlink);
    if (FUNC7(outlink) &&
        FUNC2(s->fifo) < s->window_length) {
        FUNC6(inlink);
        return 0;
    }

    return FFERROR_NOT_READY;
}