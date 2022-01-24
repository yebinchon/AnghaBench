#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * inputs; TYPE_1__* priv; } ;
struct TYPE_13__ {TYPE_4__* src; } ;
struct TYPE_12__ {int nb_samples; int /*<<< orphan*/  pts; int /*<<< orphan*/ * linesize; int /*<<< orphan*/  extended_data; } ;
struct TYPE_11__ {int /*<<< orphan*/  next_pts; scalar_t__ avr; scalar_t__ got_output; } ;
typedef  TYPE_1__ ResampleContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC5 (TYPE_3__*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    ResampleContext   *s = ctx->priv;
    int ret = 0;

    s->got_output = 0;
    while (ret >= 0 && !s->got_output)
        ret = FUNC6(ctx->inputs[0]);

    /* flush the lavr delay buffer */
    if (ret == AVERROR_EOF && s->avr) {
        AVFrame *frame;
        int nb_samples = FUNC3(s->avr, 0);

        if (!nb_samples)
            return ret;

        frame = FUNC5(outlink, nb_samples);
        if (!frame)
            return FUNC0(ENOMEM);

        ret = FUNC2(s->avr, frame->extended_data,
                                 frame->linesize[0], nb_samples,
                                 NULL, 0, 0);
        if (ret <= 0) {
            FUNC1(&frame);
            return (ret == 0) ? AVERROR_EOF : ret;
        }

        frame->nb_samples = ret;
        frame->pts = s->next_pts;
        return FUNC4(outlink, frame);
    }
    return ret;
}