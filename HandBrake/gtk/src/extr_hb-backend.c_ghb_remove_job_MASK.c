#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ sequence_id; } ;
typedef  TYPE_1__ hb_job_t ;
typedef  scalar_t__ gint ;

/* Variables and functions */
 int /*<<< orphan*/  h_queue ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void
FUNC3(gint unique_id)
{
    hb_job_t * job;
    gint ii;

    // Multiples passes all get the same id
    // remove them all.
    // Go backwards through list, so reordering doesn't screw me.
    ii = FUNC0(h_queue) - 1;
    while ((job = FUNC1(h_queue, ii--)) != NULL)
    {
        if (job->sequence_id == unique_id)
            FUNC2(h_queue, job);
    }
}