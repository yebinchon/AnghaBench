#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_16__ ;

/* Type definitions */
struct TYPE_22__ {int nb_threads; } ;
struct TYPE_21__ {struct TYPE_21__* next; int /*<<< orphan*/  pad_idx; TYPE_1__* filter_ctx; } ;
struct TYPE_20__ {int nb_outputs; TYPE_16__** outputs; int /*<<< orphan*/  graph_desc; } ;
struct TYPE_19__ {int /*<<< orphan*/  output_pads; } ;
struct TYPE_18__ {TYPE_3__* out_tmp; int /*<<< orphan*/  name; int /*<<< orphan*/  type; TYPE_2__* graph; } ;
typedef  TYPE_2__ FilterGraph ;
typedef  TYPE_3__ AVFilterInOut ;
typedef  TYPE_4__ AVFilterGraph ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_16__**,int) ; 
 TYPE_16__* FUNC2 (int) ; 
 TYPE_4__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__**) ; 
 int FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__**,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_3__*) ; 

int FUNC11(FilterGraph *fg)
{
    AVFilterInOut *inputs, *outputs, *cur;
    AVFilterGraph *graph;
    int ret = 0;

    /* this graph is only used for determining the kinds of inputs
     * and outputs we have, and is discarded on exit from this function */
    graph = FUNC3();
    if (!graph)
        return FUNC0(ENOMEM);
    graph->nb_threads = 1;

    ret = FUNC5(graph, fg->graph_desc, &inputs, &outputs);
    if (ret < 0)
        goto fail;

    for (cur = inputs; cur; cur = cur->next)
        FUNC10(fg, cur);

    for (cur = outputs; cur;) {
        FUNC1(fg->outputs, fg->nb_outputs);
        fg->outputs[fg->nb_outputs - 1] = FUNC2(sizeof(*fg->outputs[0]));
        if (!fg->outputs[fg->nb_outputs - 1])
            FUNC9(1);

        fg->outputs[fg->nb_outputs - 1]->graph   = fg;
        fg->outputs[fg->nb_outputs - 1]->out_tmp = cur;
        fg->outputs[fg->nb_outputs - 1]->type    = FUNC7(cur->filter_ctx->output_pads,
                                                                         cur->pad_idx);
        fg->outputs[fg->nb_outputs - 1]->name = FUNC8(fg, cur, 0);
        cur = cur->next;
        fg->outputs[fg->nb_outputs - 1]->out_tmp->next = NULL;
    }

fail:
    FUNC6(&inputs);
    FUNC4(&graph);
    return ret;
}