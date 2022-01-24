#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_2__* graph; } ;
struct TYPE_13__ {int nb_filters; TYPE_3__** filters; scalar_t__ execute; TYPE_1__* internal; scalar_t__ thread_type; } ;
struct TYPE_12__ {scalar_t__ thread_execute; } ;
typedef  TYPE_2__ AVFilterGraph ;
typedef  TYPE_3__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilter ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__** FUNC2 (TYPE_3__**,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/  const*,char const*) ; 
 int FUNC5 (TYPE_2__*) ; 

AVFilterContext *FUNC6(AVFilterGraph *graph,
                                             const AVFilter *filter,
                                             const char *name)
{
    AVFilterContext **filters, *s;

    if (graph->thread_type && !graph->internal->thread_execute) {
        if (graph->execute) {
            graph->internal->thread_execute = graph->execute;
        } else {
            int ret = FUNC5(graph);
            if (ret < 0) {
                FUNC1(graph, AV_LOG_ERROR, "Error initializing threading: %s.\n", FUNC0(ret));
                return NULL;
            }
        }
    }

    s = FUNC4(filter, name);
    if (!s)
        return NULL;

    filters = FUNC2(graph->filters, sizeof(*filters) * (graph->nb_filters + 1));
    if (!filters) {
        FUNC3(s);
        return NULL;
    }

    graph->filters = filters;
    graph->filters[graph->nb_filters++] = s;

    s->graph = graph;

    return s;
}