#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  frame_blocked_in; scalar_t__ frame_wanted_out; } ;
struct TYPE_9__ {int /*<<< orphan*/  fifo; int /*<<< orphan*/  status_out; scalar_t__ status_in; int /*<<< orphan*/  min_samples; } ;
struct TYPE_8__ {unsigned int nb_inputs; unsigned int nb_outputs; TYPE_5__** outputs; TYPE_2__** inputs; } ;
typedef  TYPE_1__ AVFilterContext ;

/* Variables and functions */
 int FFERROR_NOT_READY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_5__*) ; 
 int FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVFilterContext *filter)
{
    unsigned i;

    for (i = 0; i < filter->nb_inputs; i++) {
        if (FUNC5(filter->inputs[i], filter->inputs[i]->min_samples)) {
            return FUNC1(filter->inputs[i]);
        }
    }
    for (i = 0; i < filter->nb_inputs; i++) {
        if (filter->inputs[i]->status_in && !filter->inputs[i]->status_out) {
            FUNC0(!FUNC2(&filter->inputs[i]->fifo));
            return FUNC4(filter, filter->inputs[i]);
        }
    }
    for (i = 0; i < filter->nb_outputs; i++) {
        if (filter->outputs[i]->frame_wanted_out &&
            !filter->outputs[i]->frame_blocked_in) {
            return FUNC3(filter->outputs[i]);
        }
    }
    return FFERROR_NOT_READY;
}