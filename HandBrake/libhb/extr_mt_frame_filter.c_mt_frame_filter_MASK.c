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
struct TYPE_5__ {scalar_t__ frame_count; scalar_t__ thread_count; TYPE_1__** thread_data; int /*<<< orphan*/  taskset; } ;
typedef  TYPE_2__ hb_filter_private_t ;
typedef  int /*<<< orphan*/  hb_buffer_t ;
typedef  int /*<<< orphan*/  hb_buffer_list_t ;
struct TYPE_4__ {int /*<<< orphan*/  out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static hb_buffer_t * FUNC3(hb_filter_private_t *pv)
{
    if (pv->frame_count < pv->thread_count)
    {
        return NULL;
    }

    FUNC2(&pv->taskset);
    pv->frame_count = 0;

    // Collect results from taskset
    hb_buffer_list_t list;
    FUNC1(&list);
    for (int t = 0; t < pv->thread_count; t++)
    {
        FUNC0(&list, pv->thread_data[t]->out);
    }
    return FUNC1(&list);
}