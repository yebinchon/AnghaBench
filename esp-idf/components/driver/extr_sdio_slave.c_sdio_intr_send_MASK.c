#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ portBASE_TYPE ;
struct TYPE_8__ {int rx_eof; } ;
struct TYPE_7__ {scalar_t__ rx_eof; scalar_t__ rx_done; } ;
struct TYPE_6__ {scalar_t__ rx_done; } ;
struct TYPE_10__ {TYPE_3__ slc0_int_clr; TYPE_2__ slc0_int_st; TYPE_1__ slc0_int_ena; } ;
struct TYPE_9__ {int /*<<< orphan*/ * in_flight; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_5__ SLC ; 
 scalar_t__ STATE_SENDING ; 
 scalar_t__ STATE_WAIT_FOR_START ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_4__ context ; 
 scalar_t__ pdFALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(void* arg)
{
    FUNC0(TAG, "intr_send");
    portBASE_TYPE yield = pdFALSE;

    // this interrupt is abused to get ISR invoked by app
    if (SLC.slc0_int_st.rx_done) SLC.slc0_int_ena.rx_done = 0;

    // Goto idle state (cur_start=NULL) if transmission done,
    // also update sequence and recycle descs.
    if (SLC.slc0_int_st.rx_eof) {
        SLC.slc0_int_clr.rx_eof = 1;
        //check current state
        FUNC1(FUNC3() == STATE_SENDING);// context.send_start != NOT_YET && context.send_end != NOT_YET);
        FUNC5(&yield);
    }

    // Go to wait sending state (cur_start!=NULL && cur_end==NULL) if not sending and new packet ready.
    // Note we may also enter this state by stopping sending in the app.
    if (FUNC3() == STATE_WAIT_FOR_START) {
        if (context.in_flight == NULL) FUNC4(&yield);
        // Go to sending state (cur_start and cur_end != NULL) if has packet to send.
        if (context.in_flight) FUNC6();
    }

    if (yield) FUNC2();
}