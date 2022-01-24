#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_23__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_28__ {TYPE_6__* out; TYPE_6__* in; } ;
typedef  TYPE_4__ ThreadData ;
struct TYPE_32__ {TYPE_3__** inputs; TYPE_7__** outputs; TYPE_1__* internal; TYPE_5__* priv; } ;
struct TYPE_31__ {int channels; int /*<<< orphan*/  time_base; TYPE_8__* dst; } ;
struct TYPE_30__ {int /*<<< orphan*/  pts; int /*<<< orphan*/  nb_samples; } ;
struct TYPE_29__ {TYPE_23__* video; scalar_t__ response; TYPE_2__* iir; int /*<<< orphan*/  iir_channel; } ;
struct TYPE_27__ {int /*<<< orphan*/  time_base; } ;
struct TYPE_26__ {scalar_t__ clippings; } ;
struct TYPE_25__ {scalar_t__ pts; } ;
struct TYPE_24__ {int /*<<< orphan*/  (* execute ) (TYPE_8__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int) ;} ;
typedef  TYPE_5__ AudioIIRContext ;
typedef  TYPE_6__ AVFrame ;
typedef  TYPE_7__ AVFilterLink ;
typedef  TYPE_8__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_6__* FUNC1 (TYPE_23__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__**) ; 
 scalar_t__ FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,int /*<<< orphan*/ ,char*,int,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_7__*,TYPE_6__*) ; 
 TYPE_6__* FUNC8 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC10(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AudioIIRContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    ThreadData td;
    AVFrame *out;
    int ch, ret;

    if (FUNC4(in)) {
        out = in;
    } else {
        out = FUNC8(outlink, in->nb_samples);
        if (!out) {
            FUNC3(&in);
            return FUNC0(ENOMEM);
        }
        FUNC2(out, in);
    }

    td.in  = in;
    td.out = out;
    ctx->internal->execute(ctx, s->iir_channel, &td, NULL, outlink->channels);

    for (ch = 0; ch < outlink->channels; ch++) {
        if (s->iir[ch].clippings > 0)
            FUNC5(ctx, AV_LOG_WARNING, "Channel %d clipping %d times. Please reduce gain.\n",
                   ch, s->iir[ch].clippings);
        s->iir[ch].clippings = 0;
    }

    if (in != out)
        FUNC3(&in);

    if (s->response) {
        AVFilterLink *outlink = ctx->outputs[1];
        int64_t old_pts = s->video->pts;
        int64_t new_pts = FUNC6(out->pts, ctx->inputs[0]->time_base, outlink->time_base);

        if (new_pts > old_pts) {
            s->video->pts = new_pts;
            ret = FUNC7(outlink, FUNC1(s->video));
            if (ret < 0)
                return ret;
        }
    }

    return FUNC7(outlink, out);
}