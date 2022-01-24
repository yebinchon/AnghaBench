#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {TYPE_5__* out; TYPE_5__* in; } ;
typedef  TYPE_3__ ThreadData ;
struct TYPE_28__ {TYPE_1__* internal; TYPE_6__** outputs; TYPE_4__* priv; } ;
struct TYPE_27__ {int channels; TYPE_7__* dst; } ;
struct TYPE_26__ {int /*<<< orphan*/  nb_samples; } ;
struct TYPE_25__ {TYPE_2__* cache; } ;
struct TYPE_23__ {scalar_t__ clippings; } ;
struct TYPE_22__ {int /*<<< orphan*/  (* execute ) (TYPE_7__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_4__ BiquadsContext ;
typedef  TYPE_5__ AVFrame ;
typedef  TYPE_6__ AVFilterLink ;
typedef  TYPE_7__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__**) ; 
 scalar_t__ FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int /*<<< orphan*/ ,char*,int,scalar_t__) ; 
 int FUNC6 (TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*) ; 
 TYPE_5__* FUNC8 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filter_channel ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(AVFilterLink *inlink, AVFrame *buf)
{
    AVFilterContext  *ctx = inlink->dst;
    BiquadsContext *s     = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out_buf;
    ThreadData td;
    int ch;

    if (FUNC4(buf)) {
        out_buf = buf;
    } else {
        out_buf = FUNC8(outlink, buf->nb_samples);
        if (!out_buf) {
            FUNC3(&buf);
            return FUNC0(ENOMEM);
        }
        FUNC2(out_buf, buf);
    }

    td.in = buf;
    td.out = out_buf;
    ctx->internal->execute(ctx, filter_channel, &td, NULL, FUNC1(outlink->channels, FUNC7(ctx)));

    for (ch = 0; ch < outlink->channels; ch++) {
        if (s->cache[ch].clippings > 0)
            FUNC5(ctx, AV_LOG_WARNING, "Channel %d clipping %d times. Please reduce gain.\n",
                   ch, s->cache[ch].clippings);
        s->cache[ch].clippings = 0;
    }

    if (buf != out_buf)
        FUNC3(&buf);

    return FUNC6(outlink, out_buf);
}