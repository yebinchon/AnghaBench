#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_19__ {int const ratio; scalar_t__ next_pts; int more_data; int /*<<< orphan*/  swr; } ;
struct TYPE_16__ {scalar_t__ num; int /*<<< orphan*/  den; } ;
struct TYPE_18__ {scalar_t__ sample_rate; TYPE_2__ time_base; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  channels; int /*<<< orphan*/  format; TYPE_1__* dst; } ;
struct TYPE_17__ {int nb_samples; scalar_t__ sample_rate; scalar_t__ pts; scalar_t__ extended_data; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  channels; int /*<<< orphan*/  format; } ;
struct TYPE_15__ {TYPE_4__** outputs; TYPE_5__* priv; } ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AResampleContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__**) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_4__* const,TYPE_3__*) ; 
 TYPE_3__* FUNC8 (TYPE_4__* const,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__,int,void*,int const) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC12(AVFilterLink *inlink, AVFrame *insamplesref)
{
    AResampleContext *aresample = inlink->dst->priv;
    const int n_in  = insamplesref->nb_samples;
    int64_t delay;
    int n_out       = n_in * aresample->ratio + 32;
    AVFilterLink *const outlink = inlink->dst->outputs[0];
    AVFrame *outsamplesref;
    int ret;

    delay = FUNC10(aresample->swr, outlink->sample_rate);
    if (delay > 0)
        n_out += FUNC2(delay, FUNC1(4096, n_out));

    outsamplesref = FUNC8(outlink, n_out);

    if(!outsamplesref) {
        FUNC5(&insamplesref);
        return FUNC0(ENOMEM);
    }

    FUNC4(outsamplesref, insamplesref);
    outsamplesref->format                = outlink->format;
    outsamplesref->channels              = outlink->channels;
    outsamplesref->channel_layout        = outlink->channel_layout;
    outsamplesref->sample_rate           = outlink->sample_rate;

    if(insamplesref->pts != AV_NOPTS_VALUE) {
        int64_t inpts = FUNC6(insamplesref->pts, inlink->time_base.num * (int64_t)outlink->sample_rate * inlink->sample_rate, inlink->time_base.den);
        int64_t outpts= FUNC11(aresample->swr, inpts);
        aresample->next_pts =
        outsamplesref->pts  = FUNC3(outpts, inlink->sample_rate);
    } else {
        outsamplesref->pts  = AV_NOPTS_VALUE;
    }
    n_out = FUNC9(aresample->swr, outsamplesref->extended_data, n_out,
                                 (void *)insamplesref->extended_data, n_in);
    if (n_out <= 0) {
        FUNC5(&outsamplesref);
        FUNC5(&insamplesref);
        return 0;
    }

    aresample->more_data = outsamplesref->nb_samples == n_out; // Indicate that there is probably more data in our buffers

    outsamplesref->nb_samples  = n_out;

    ret = FUNC7(outlink, outsamplesref);
    FUNC5(&insamplesref);
    return ret;
}