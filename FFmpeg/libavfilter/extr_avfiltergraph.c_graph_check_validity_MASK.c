#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int nb_inputs; int nb_outputs; TYPE_3__* filter; int /*<<< orphan*/  name; TYPE_4__* output_pads; TYPE_2__** outputs; TYPE_4__* input_pads; TYPE_1__** inputs; } ;
struct TYPE_12__ {int nb_filters; TYPE_6__** filters; } ;
struct TYPE_11__ {int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int /*<<< orphan*/  dst; } ;
struct TYPE_8__ {int /*<<< orphan*/  src; } ;
typedef  TYPE_4__ AVFilterPad ;
typedef  TYPE_5__ AVFilterGraph ;
typedef  TYPE_6__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVClass ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(AVFilterGraph *graph, AVClass *log_ctx)
{
    AVFilterContext *filt;
    int i, j;

    for (i = 0; i < graph->nb_filters; i++) {
        const AVFilterPad *pad;
        filt = graph->filters[i];

        for (j = 0; j < filt->nb_inputs; j++) {
            if (!filt->inputs[j] || !filt->inputs[j]->src) {
                pad = &filt->input_pads[j];
                FUNC2(log_ctx, AV_LOG_ERROR,
                       "Input pad \"%s\" with type %s of the filter instance \"%s\" of %s not connected to any source\n",
                       pad->name, FUNC1(pad->type), filt->name, filt->filter->name);
                return FUNC0(EINVAL);
            }
        }

        for (j = 0; j < filt->nb_outputs; j++) {
            if (!filt->outputs[j] || !filt->outputs[j]->dst) {
                pad = &filt->output_pads[j];
                FUNC2(log_ctx, AV_LOG_ERROR,
                       "Output pad \"%s\" with type %s of the filter instance \"%s\" of %s not connected to any destination\n",
                       pad->name, FUNC1(pad->type), filt->name, filt->filter->name);
                return FUNC0(EINVAL);
            }
        }
    }

    return 0;
}