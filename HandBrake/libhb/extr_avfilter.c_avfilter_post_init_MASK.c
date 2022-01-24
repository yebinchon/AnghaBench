#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hb_job_t ;
struct TYPE_5__ {int /*<<< orphan*/ * graph; int /*<<< orphan*/  list; int /*<<< orphan*/  output; int /*<<< orphan*/  input; scalar_t__ initialized; } ;
typedef  TYPE_1__ hb_filter_private_t ;
struct TYPE_6__ {int /*<<< orphan*/  settings; TYPE_1__* private_data; } ;
typedef  TYPE_2__ hb_filter_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5( hb_filter_object_t * filter, hb_job_t * job )
{
    hb_filter_private_t * pv = filter->private_data;

    if (pv == NULL)
    {
        return 1;
    }
    if (pv->initialized)
    {
        return 0;
    }

    pv->graph = FUNC2(filter->settings, &pv->input);
    if (pv->graph == NULL)
    {
        goto fail;
    }

    // Retrieve the parameters of the output filter
    pv->output = pv->input;
    FUNC3(pv->graph, &pv->output);

    FUNC4(&pv->list);

    return 0;

fail:
    FUNC1(&pv->graph);
    FUNC0(pv);

    return 1;
}