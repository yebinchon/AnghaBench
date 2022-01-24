#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ nb_out_samples; int /*<<< orphan*/  pad; } ;
struct TYPE_13__ {TYPE_3__* priv; int /*<<< orphan*/ ** outputs; int /*<<< orphan*/ ** inputs; } ;
struct TYPE_12__ {scalar_t__ nb_samples; int /*<<< orphan*/  format; int /*<<< orphan*/  channels; int /*<<< orphan*/  extended_data; } ;
typedef  TYPE_1__ AVFrame ;
typedef  int /*<<< orphan*/  AVFilterLink ;
typedef  TYPE_2__ AVFilterContext ;
typedef  TYPE_3__ ASNSContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FFERROR_NOT_READY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC11 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,TYPE_1__**) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(AVFilterContext *ctx)
{
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    ASNSContext *s = ctx->priv;
    AVFrame *frame = NULL, *pad_frame;
    int ret;

    FUNC2(outlink, inlink);

    ret = FUNC11(inlink, s->nb_out_samples, s->nb_out_samples, &frame);
    if (ret < 0)
        return ret;

    if (ret > 0) {
        if (!s->pad || frame->nb_samples == s->nb_out_samples) {
            ret = FUNC8(outlink, frame);
            if (FUNC12(inlink) >= s->nb_out_samples)
                FUNC9(ctx, 100);
            return ret;
        }

        pad_frame = FUNC10(outlink, s->nb_out_samples);
        if (!pad_frame) {
            FUNC5(&frame);
            return FUNC0(ENOMEM);
        }

        ret = FUNC4(pad_frame, frame);
        if (ret < 0) {
            FUNC5(&pad_frame);
            FUNC5(&frame);
            return ret;
        }

        FUNC6(pad_frame->extended_data, frame->extended_data,
                        0, 0, frame->nb_samples, frame->channels, frame->format);
        FUNC7(pad_frame->extended_data, frame->nb_samples,
                               s->nb_out_samples - frame->nb_samples, frame->channels,
                               frame->format);
        FUNC5(&frame);
        return FUNC8(outlink, pad_frame);
    }

    FUNC1(inlink, outlink);
    FUNC3(outlink, inlink);

    return FFERROR_NOT_READY;
}