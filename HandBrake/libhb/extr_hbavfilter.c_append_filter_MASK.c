#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * last; int /*<<< orphan*/  avgraph; } ;
typedef  TYPE_1__ hb_avfilter_graph_t ;
typedef  int /*<<< orphan*/  AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static AVFilterContext * FUNC4( hb_avfilter_graph_t * graph,
                                        const char * name, const char * args)
{
    AVFilterContext * filter;
    int               result;

    result = FUNC2(&filter, FUNC1(name),
                                          name, args, NULL, graph->avgraph);
    if (result < 0)
    {
        return NULL;
    }
    if (graph->last != NULL)
    {
        result = FUNC3(graph->last, 0, filter, 0);
        if (result < 0)
        {
            FUNC0(filter);
            return NULL;
        }
    }
    graph->last = filter;

    return filter;
}