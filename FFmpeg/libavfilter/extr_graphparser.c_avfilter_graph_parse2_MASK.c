#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * filters; scalar_t__ nb_filters; } ;
typedef  int /*<<< orphan*/  AVFilterInOut ;
typedef  TYPE_1__ AVFilterGraph ;
typedef  int /*<<< orphan*/  AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  WHITESPACES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ **,char const**,TYPE_1__*,int,TYPE_1__*) ; 
 int FUNC8 (char const**,int /*<<< orphan*/ **,int /*<<< orphan*/ **,TYPE_1__*) ; 
 int FUNC9 (char const**,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,TYPE_1__*) ; 
 int FUNC10 (char const**,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,int /*<<< orphan*/ ) ; 

int FUNC12(AVFilterGraph *graph, const char *filters,
                          AVFilterInOut **inputs,
                          AVFilterInOut **outputs)
{
    int index = 0, ret = 0;
    char chr = 0;

    AVFilterInOut *curr_inputs = NULL, *open_inputs = NULL, *open_outputs = NULL;

    filters += FUNC11(filters, WHITESPACES);

    if ((ret = FUNC10(&filters, graph)) < 0)
        goto fail;

    do {
        AVFilterContext *filter;
        filters += FUNC11(filters, WHITESPACES);

        if ((ret = FUNC8(&filters, &curr_inputs, &open_outputs, graph)) < 0)
            goto end;
        if ((ret = FUNC7(&filter, &filters, graph, index, graph)) < 0)
            goto end;


        if ((ret = FUNC6(filter, &curr_inputs, &open_inputs, graph)) < 0)
            goto end;

        if ((ret = FUNC9(&filters, &curr_inputs, &open_inputs, &open_outputs,
                                 graph)) < 0)
            goto end;

        filters += FUNC11(filters, WHITESPACES);
        chr = *filters++;

        if (chr == ';' && curr_inputs)
            FUNC1(&open_outputs, &curr_inputs);
        index++;
    } while (chr == ',' || chr == ';');

    if (chr) {
        FUNC3(graph, AV_LOG_ERROR,
               "Unable to parse graph description substring: \"%s\"\n",
               filters - 1);
        ret = FUNC0(EINVAL);
        goto end;
    }

    FUNC1(&open_outputs, &curr_inputs);


    *inputs  = open_inputs;
    *outputs = open_outputs;
    return 0;

 fail:end:
    while (graph->nb_filters)
        FUNC4(graph->filters[0]);
    FUNC2(&graph->filters);
    FUNC5(&open_inputs);
    FUNC5(&open_outputs);
    FUNC5(&curr_inputs);

    *inputs  = NULL;
    *outputs = NULL;

    return ret;
}