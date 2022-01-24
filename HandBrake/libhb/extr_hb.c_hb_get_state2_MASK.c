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
typedef  int /*<<< orphan*/  hb_state_t ;
struct TYPE_3__ {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ hb_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC3( hb_handle_t * h, hb_state_t * s )
{
    FUNC0( h->state_lock );

    FUNC2( s, &h->state, sizeof( hb_state_t ) );

    FUNC1( h->state_lock );
}