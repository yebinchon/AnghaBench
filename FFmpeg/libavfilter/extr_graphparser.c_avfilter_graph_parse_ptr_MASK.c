#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int nb_inputs; } ;
struct TYPE_8__ {int /*<<< orphan*/ * filters; scalar_t__ nb_filters; } ;
typedef  int /*<<< orphan*/  AVFilterInOut ;
typedef  TYPE_1__ AVFilterGraph ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  WHITESPACES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,void*) ; 
 int FUNC6 (TYPE_2__**,char const**,TYPE_1__*,int,void*) ; 
 int FUNC7 (char const**,int /*<<< orphan*/ **,int /*<<< orphan*/ **,void*) ; 
 int FUNC8 (char const**,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,void*) ; 
 int FUNC9 (char const**,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ ) ; 

int FUNC11(AVFilterGraph *graph, const char *filters,
                         AVFilterInOut **open_inputs_ptr, AVFilterInOut **open_outputs_ptr,
                         void *log_ctx)
{
    int index = 0, ret = 0;
    char chr = 0;

    AVFilterInOut *curr_inputs = NULL;
    AVFilterInOut *open_inputs  = open_inputs_ptr  ? *open_inputs_ptr  : NULL;
    AVFilterInOut *open_outputs = open_outputs_ptr ? *open_outputs_ptr : NULL;

    if ((ret = FUNC9(&filters, graph)) < 0)
        goto end;

    do {
        AVFilterContext *filter;
        const char *filterchain = filters;
        filters += FUNC10(filters, WHITESPACES);

        if ((ret = FUNC7(&filters, &curr_inputs, &open_outputs, log_ctx)) < 0)
            goto end;

        if ((ret = FUNC6(&filter, &filters, graph, index, log_ctx)) < 0)
            goto end;

        if (filter->nb_inputs == 1 && !curr_inputs && !index) {
            /* First input pad, assume it is "[in]" if not specified */
            const char *tmp = "[in]";
            if ((ret = FUNC7(&tmp, &curr_inputs, &open_outputs, log_ctx)) < 0)
                goto end;
        }

        if ((ret = FUNC5(filter, &curr_inputs, &open_inputs, log_ctx)) < 0)
            goto end;

        if ((ret = FUNC8(&filters, &curr_inputs, &open_inputs, &open_outputs,
                                 log_ctx)) < 0)
            goto end;

        filters += FUNC10(filters, WHITESPACES);
        chr = *filters++;

        if (chr == ';' && curr_inputs) {
            FUNC2(log_ctx, AV_LOG_ERROR,
                   "Invalid filterchain containing an unlabelled output pad: \"%s\"\n",
                   filterchain);
            ret = FUNC0(EINVAL);
            goto end;
        }
        index++;
    } while (chr == ',' || chr == ';');

    if (chr) {
        FUNC2(log_ctx, AV_LOG_ERROR,
               "Unable to parse graph description substring: \"%s\"\n",
               filters - 1);
        ret = FUNC0(EINVAL);
        goto end;
    }

    if (curr_inputs) {
        /* Last output pad, assume it is "[out]" if not specified */
        const char *tmp = "[out]";
        if ((ret = FUNC8(&tmp, &curr_inputs, &open_inputs, &open_outputs,
                                 log_ctx)) < 0)
            goto end;
    }

end:
    /* clear open_in/outputs only if not passed as parameters */
    if (open_inputs_ptr) *open_inputs_ptr = open_inputs;
    else FUNC4(&open_inputs);
    if (open_outputs_ptr) *open_outputs_ptr = open_outputs;
    else FUNC4(&open_outputs);
    FUNC4(&curr_inputs);

    if (ret < 0) {
        while (graph->nb_filters)
            FUNC3(graph->filters[0]);
        FUNC1(&graph->filters);
    }
    return ret;
}