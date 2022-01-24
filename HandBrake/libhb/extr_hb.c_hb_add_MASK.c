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
struct TYPE_8__ {int sequence_id; TYPE_2__* h; } ;
typedef  TYPE_1__ hb_job_t ;
struct TYPE_9__ {int sequence_id; int /*<<< orphan*/  jobs; } ;
typedef  TYPE_2__ hb_handle_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 

int FUNC2( hb_handle_t * h, hb_job_t * job )
{
    hb_job_t *job_copy = FUNC0(job);
    job_copy->h = h;
    job_copy->sequence_id = ++h->sequence_id;
    FUNC1(h->jobs, job_copy);

    return job_copy->sequence_id;
}