#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tSMP_STATE ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ SMP_STATE_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 TYPE_1__ smp_cb ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void FUNC2(tSMP_STATE state)
{
    if (state < SMP_STATE_MAX) {
        FUNC0( "State change: %s(%d) ==> %s(%d)",
                         FUNC1(smp_cb.state), smp_cb.state,
                         FUNC1(state), state );
        smp_cb.state = state;
    } else {
        FUNC0("smp_set_state invalid state =%d", state );
    }
}