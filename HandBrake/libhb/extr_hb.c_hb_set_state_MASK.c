#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hb_state_t ;
struct TYPE_7__ {scalar_t__ state; int /*<<< orphan*/  sequence_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  pause_lock; int /*<<< orphan*/  state_lock; TYPE_1__* current_job; TYPE_3__ state; } ;
typedef  TYPE_2__ hb_handle_t ;
struct TYPE_5__ {int /*<<< orphan*/  sequence_id; } ;

/* Variables and functions */
 scalar_t__ HB_STATE_SEARCHING ; 
 scalar_t__ HB_STATE_WORKING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 

void FUNC3( hb_handle_t * h, hb_state_t * s )
{
    FUNC0( h->pause_lock );
    FUNC0( h->state_lock );
    FUNC2( &h->state, s, sizeof( hb_state_t ) );
    if( h->state.state == HB_STATE_WORKING ||
        h->state.state == HB_STATE_SEARCHING )
    {
        // Set which job is being worked on
        if (h->current_job)
            h->state.sequence_id = h->current_job->sequence_id;
    }
    FUNC1( h->state_lock );
    FUNC1( h->pause_lock );
}