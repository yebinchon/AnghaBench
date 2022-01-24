#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  error; } ;
struct TYPE_9__ {TYPE_1__ working; } ;
struct TYPE_10__ {TYPE_2__ param; } ;
typedef  TYPE_3__ hb_state_t ;
struct TYPE_11__ {int /*<<< orphan*/  h; int /*<<< orphan*/ * done_error; } ;
typedef  TYPE_4__ hb_job_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static void FUNC2(hb_job_t *job)
{
    hb_state_t state;

    if (job == NULL)
    {
        return;
    }
    FUNC0(job->h, &state);
    state.param.working.error        = *job->done_error;
    FUNC1( job->h, &state );
}