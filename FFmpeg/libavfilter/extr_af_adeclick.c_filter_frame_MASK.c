#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {TYPE_6__* out; } ;
typedef  TYPE_4__ ThreadData ;
struct TYPE_24__ {TYPE_1__* internal; TYPE_5__* priv; TYPE_7__** outputs; } ;
struct TYPE_23__ {int channels; TYPE_8__* dst; } ;
struct TYPE_22__ {int nb_samples; int pts; } ;
struct TYPE_21__ {int hop_size; scalar_t__ samples_left; int pts; int detected_errors; int nb_samples; int /*<<< orphan*/  fifo; TYPE_3__* is; TYPE_2__* in; int /*<<< orphan*/  window_size; } ;
struct TYPE_19__ {scalar_t__* extended_data; } ;
struct TYPE_18__ {int channels; scalar_t__ extended_data; } ;
struct TYPE_17__ {int (* execute ) (TYPE_8__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int) ;} ;
typedef  TYPE_5__ AudioDeclickContext ;
typedef  TYPE_6__ AVFrame ;
typedef  TYPE_7__ AVFilterLink ;
typedef  TYPE_8__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__**) ; 
 int FUNC6 (TYPE_7__*,TYPE_6__*) ; 
 TYPE_6__* FUNC7 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  filter_channel ; 
 int FUNC8 (TYPE_8__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    AudioDeclickContext *s = ctx->priv;
    AVFrame *out = NULL;
    int ret = 0, j, ch, detected_errors = 0;
    ThreadData td;

    out = FUNC7(outlink, s->hop_size);
    if (!out)
        return FUNC0(ENOMEM);

    ret = FUNC3(s->fifo, (void **)s->in->extended_data,
                             s->window_size);
    if (ret < 0)
        goto fail;

    td.out = out;
    ret = ctx->internal->execute(ctx, filter_channel, &td, NULL, inlink->channels);
    if (ret < 0)
        goto fail;

    for (ch = 0; ch < s->in->channels; ch++) {
        double *is = (double *)s->is->extended_data[ch];

        for (j = 0; j < s->hop_size; j++) {
            if (is[j])
                detected_errors++;
        }
    }

    FUNC2(s->fifo, s->hop_size);

    if (s->samples_left > 0)
        out->nb_samples = FUNC1(s->hop_size, s->samples_left);

    out->pts = s->pts;
    s->pts += s->hop_size;

    s->detected_errors += detected_errors;
    s->nb_samples += out->nb_samples * inlink->channels;

    ret = FUNC6(outlink, out);
    if (ret < 0)
        return ret;

    if (s->samples_left > 0) {
        s->samples_left -= s->hop_size;
        if (s->samples_left <= 0)
            FUNC2(s->fifo, FUNC4(s->fifo));
    }

fail:
    if (ret < 0)
        FUNC5(&out);
    return ret;
}