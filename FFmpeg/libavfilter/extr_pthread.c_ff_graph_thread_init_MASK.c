#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ThreadContext ;
struct TYPE_5__ {int nb_threads; TYPE_1__* internal; scalar_t__ thread_type; } ;
struct TYPE_4__ {int /*<<< orphan*/  thread_execute; int /*<<< orphan*/  thread; } ;
typedef  TYPE_2__ AVFilterGraph ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  thread_execute ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

int FUNC4(AVFilterGraph *graph)
{
    int ret;

    if (graph->nb_threads == 1) {
        graph->thread_type = 0;
        return 0;
    }

    graph->internal->thread = FUNC2(sizeof(ThreadContext));
    if (!graph->internal->thread)
        return FUNC0(ENOMEM);

    ret = FUNC3(graph->internal->thread, graph->nb_threads);
    if (ret <= 1) {
        FUNC1(&graph->internal->thread);
        graph->thread_type = 0;
        graph->nb_threads  = 1;
        return (ret < 0) ? ret : 0;
    }
    graph->nb_threads = ret;

    graph->internal->thread_execute = thread_execute;

    return 0;
}