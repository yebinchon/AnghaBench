#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  STATE_RX_INIT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  eRcvState ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4( void )
{
    FUNC0(  );
    /* Initially the receiver is in the state STATE_RX_INIT. we start
     * the timer and if no character is received within t3.5 we change
     * to STATE_RX_IDLE. This makes sure that we delay startup of the
     * modbus protocol stack until the bus is free.
     */
    eRcvState = STATE_RX_INIT;
    FUNC2( TRUE, FALSE );
    FUNC3(  );

    FUNC1(  );
}