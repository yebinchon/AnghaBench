#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/ * outputs; TYPE_4__** inputs; TYPE_1__* priv; } ;
struct TYPE_19__ {int channels; } ;
struct TYPE_18__ {int nb_samples; scalar_t__* extended_data; } ;
struct TYPE_17__ {int /*<<< orphan*/  volume; } ;
struct TYPE_16__ {TYPE_2__* channels; } ;
typedef  TYPE_1__ CompandContext ;
typedef  TYPE_2__ ChanParam ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__**) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (double const) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,int const) ; 
 double const FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(AVFilterContext *ctx, AVFrame *frame)
{
    CompandContext *s    = ctx->priv;
    AVFilterLink *inlink = ctx->inputs[0];
    const int channels   = inlink->channels;
    const int nb_samples = frame->nb_samples;
    AVFrame *out_frame;
    int chan, i;
    int err;

    if (FUNC3(frame)) {
        out_frame = frame;
    } else {
        out_frame = FUNC6(ctx->outputs[0], nb_samples);
        if (!out_frame) {
            FUNC2(&frame);
            return FUNC0(ENOMEM);
        }
        err = FUNC1(out_frame, frame);
        if (err < 0) {
            FUNC2(&out_frame);
            FUNC2(&frame);
            return err;
        }
    }

    for (chan = 0; chan < channels; chan++) {
        const double *src = (double *)frame->extended_data[chan];
        double *dst = (double *)out_frame->extended_data[chan];
        ChanParam *cp = &s->channels[chan];

        for (i = 0; i < nb_samples; i++) {
            FUNC8(cp, FUNC4(src[i]));

            dst[i] = src[i] * FUNC7(s, cp->volume);
        }
    }

    if (frame != out_frame)
        FUNC2(&frame);

    return FUNC5(ctx->outputs[0], out_frame);
}