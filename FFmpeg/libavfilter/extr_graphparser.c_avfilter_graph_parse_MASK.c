#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {TYPE_1__* filter; } ;
struct TYPE_17__ {int /*<<< orphan*/ * filters; scalar_t__ nb_filters; } ;
struct TYPE_16__ {int /*<<< orphan*/  pad_idx; TYPE_6__* filter_ctx; void* name; struct TYPE_16__* next; } ;
struct TYPE_15__ {char const* name; } ;
typedef  TYPE_2__ AVFilterInOut ;
typedef  TYPE_3__ AVFilterGraph ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,char*,char const*) ; 
 void* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_3__*,char const*,TYPE_2__**,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__**) ; 
 int FUNC7 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (void*,TYPE_2__**) ; 

int FUNC9(AVFilterGraph *graph, const char *filters,
                         AVFilterInOut *open_inputs,
                         AVFilterInOut *open_outputs, void *log_ctx)
{
    int ret;
    AVFilterInOut *cur, *match, *inputs = NULL, *outputs = NULL;

    if ((ret = FUNC5(graph, filters, &inputs, &outputs)) < 0)
        goto fail;

    /* First input can be omitted if it is "[in]" */
    if (inputs && !inputs->name)
        inputs->name = FUNC3("in");
    for (cur = inputs; cur; cur = cur->next) {
        if (!cur->name) {
              FUNC2(log_ctx, AV_LOG_ERROR,
                     "Not enough inputs specified for the \"%s\" filter.\n",
                     cur->filter_ctx->filter->name);
              ret = FUNC0(EINVAL);
              goto fail;
        }
        if (!(match = FUNC8(cur->name, &open_outputs)))
            continue;
        ret = FUNC7(match->filter_ctx, match->pad_idx,
                            cur->filter_ctx,   cur->pad_idx);
        FUNC6(&match);
        if (ret < 0)
            goto fail;
    }

    /* Last output can be omitted if it is "[out]" */
    if (outputs && !outputs->name)
        outputs->name = FUNC3("out");
    for (cur = outputs; cur; cur = cur->next) {
        if (!cur->name) {
            FUNC2(log_ctx, AV_LOG_ERROR,
                   "Invalid filterchain containing an unlabelled output pad: \"%s\"\n",
                   filters);
            ret = FUNC0(EINVAL);
            goto fail;
        }
        if (!(match = FUNC8(cur->name, &open_inputs)))
            continue;
        ret = FUNC7(cur->filter_ctx,   cur->pad_idx,
                            match->filter_ctx, match->pad_idx);
        FUNC6(&match);
        if (ret < 0)
            goto fail;
    }

 fail:
    if (ret < 0) {
        while (graph->nb_filters)
            FUNC4(graph->filters[0]);
        FUNC1(&graph->filters);
    }
    FUNC6(&inputs);
    FUNC6(&outputs);
    FUNC6(&open_inputs);
    FUNC6(&open_outputs);
    return ret;
}