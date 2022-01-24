#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  channels; int /*<<< orphan*/  channel_layout; TYPE_1__* dst; } ;
struct TYPE_16__ {int nb_samples; int /*<<< orphan*/  channels; int /*<<< orphan*/  channel_layout; scalar_t__ extended_data; } ;
struct TYPE_15__ {int /*<<< orphan*/  swr; } ;
struct TYPE_14__ {TYPE_2__* priv; TYPE_4__** outputs; } ;
typedef  TYPE_2__ PanContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__**) ; 
 int FUNC3 (TYPE_4__* const,TYPE_3__*) ; 
 TYPE_3__* FUNC4 (TYPE_4__* const,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int,void*,int) ; 

__attribute__((used)) static int FUNC6(AVFilterLink *inlink, AVFrame *insamples)
{
    int ret;
    int n = insamples->nb_samples;
    AVFilterLink *const outlink = inlink->dst->outputs[0];
    AVFrame *outsamples = FUNC4(outlink, n);
    PanContext *pan = inlink->dst->priv;

    if (!outsamples) {
        FUNC2(&insamples);
        return FUNC0(ENOMEM);
    }
    FUNC5(pan->swr, outsamples->extended_data, n,
                (void *)insamples->extended_data, n);
    FUNC1(outsamples, insamples);
    outsamples->channel_layout = outlink->channel_layout;
    outsamples->channels = outlink->channels;

    ret = FUNC3(outlink, outsamples);
    FUNC2(&insamples);
    return ret;
}