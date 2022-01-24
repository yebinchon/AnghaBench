#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_21__ {TYPE_1__** inputs; TYPE_6__** outputs; TYPE_3__* priv; } ;
struct TYPE_18__ {int member_0; int den; int /*<<< orphan*/  member_1; } ;
struct TYPE_20__ {TYPE_4__ time_base; int /*<<< orphan*/  format; int /*<<< orphan*/  channels; } ;
struct TYPE_19__ {scalar_t__ pts; int /*<<< orphan*/  extended_data; } ;
struct TYPE_17__ {TYPE_2__* in; scalar_t__ delta_ts; } ;
struct TYPE_16__ {scalar_t__ pts; } ;
struct TYPE_15__ {int /*<<< orphan*/  sample_rate; } ;
typedef  TYPE_3__ ConcatContext ;
typedef  TYPE_4__ AVRational ;
typedef  TYPE_5__ AVFrame ;
typedef  TYPE_6__ AVFilterLink ;
typedef  TYPE_7__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_BUG ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,TYPE_4__,TYPE_4__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_6__*,TYPE_5__*) ; 
 TYPE_5__* FUNC6 (TYPE_6__*,int) ; 

__attribute__((used)) static int FUNC7(AVFilterContext *ctx, unsigned in_no, unsigned out_no,
                        int64_t seg_delta)
{
    ConcatContext *cat = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[out_no];
    int64_t base_pts = cat->in[in_no].pts + cat->delta_ts - seg_delta;
    int64_t nb_samples, sent = 0;
    int frame_nb_samples, ret;
    AVRational rate_tb = { 1, ctx->inputs[in_no]->sample_rate };
    AVFrame *buf;

    if (!rate_tb.den)
        return AVERROR_BUG;
    nb_samples = FUNC3(seg_delta - cat->in[in_no].pts,
                              outlink->time_base, rate_tb);
    frame_nb_samples = FUNC1(9600, rate_tb.den / 5); /* arbitrary */
    while (nb_samples) {
        frame_nb_samples = FUNC2(frame_nb_samples, nb_samples);
        buf = FUNC6(outlink, frame_nb_samples);
        if (!buf)
            return FUNC0(ENOMEM);
        FUNC4(buf->extended_data, 0, frame_nb_samples,
                               outlink->channels, outlink->format);
        buf->pts = base_pts + FUNC3(sent, rate_tb, outlink->time_base);
        ret = FUNC5(outlink, buf);
        if (ret < 0)
            return ret;
        sent       += frame_nb_samples;
        nb_samples -= frame_nb_samples;
    }
    return 0;
}