#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int nb_inputs; int nb_outputs; struct TYPE_12__* internal; struct TYPE_12__* var_values; int /*<<< orphan*/ * enable; scalar_t__ command_queue; struct TYPE_12__* priv; struct TYPE_12__* outputs; struct TYPE_12__* inputs; struct TYPE_12__* output_pads; struct TYPE_12__* input_pads; struct TYPE_12__* name; int /*<<< orphan*/  hw_device_ctx; TYPE_1__* filter; scalar_t__ graph; } ;
struct TYPE_11__ {scalar_t__ priv_class; int /*<<< orphan*/  (* uninit ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

void FUNC9(AVFilterContext *filter)
{
    int i;

    if (!filter)
        return;

    if (filter->graph)
        FUNC6(filter->graph, filter);

    if (filter->filter->uninit)
        filter->filter->uninit(filter);

    for (i = 0; i < filter->nb_inputs; i++) {
        FUNC7(filter->inputs[i]);
    }
    for (i = 0; i < filter->nb_outputs; i++) {
        FUNC7(filter->outputs[i]);
    }

    if (filter->filter->priv_class)
        FUNC4(filter->priv);

    FUNC0(&filter->hw_device_ctx);

    FUNC3(&filter->name);
    FUNC3(&filter->input_pads);
    FUNC3(&filter->output_pads);
    FUNC3(&filter->inputs);
    FUNC3(&filter->outputs);
    FUNC3(&filter->priv);
    while(filter->command_queue){
        FUNC5(filter);
    }
    FUNC4(filter);
    FUNC1(filter->enable);
    filter->enable = NULL;
    FUNC3(&filter->var_values);
    FUNC3(&filter->internal);
    FUNC2(filter);
}