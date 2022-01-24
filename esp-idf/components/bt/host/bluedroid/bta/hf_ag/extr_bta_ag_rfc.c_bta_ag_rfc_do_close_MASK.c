#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ conn_handle; } ;
typedef  TYPE_2__ tBTA_AG_SCB ;
struct TYPE_7__ {int /*<<< orphan*/  layer_specific; int /*<<< orphan*/  event; } ;
struct TYPE_9__ {TYPE_1__ hdr; } ;
typedef  TYPE_3__ tBTA_AG_RFC ;
typedef  int /*<<< orphan*/  tBTA_AG_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_AG_RFC_CLOSE_EVT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (int) ; 

void FUNC5(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    tBTA_AG_RFC     *p_buf;
    FUNC1(p_data);

    if (p_scb->conn_handle) {
        FUNC0(p_scb->conn_handle);
    } else {
        /* Close API was called while AG is in Opening state.               */
        /* Need to trigger the state machine to send callback to the app    */
        /* and move back to INIT state.                                     */
        if ((p_buf = (tBTA_AG_RFC *) FUNC4(sizeof(tBTA_AG_RFC))) != NULL) {
            p_buf->hdr.event = BTA_AG_RFC_CLOSE_EVT;
            p_buf->hdr.layer_specific = FUNC2(p_scb);
            FUNC3(p_buf);
        }
        /* Cancel SDP if it had been started. */
        /*
        if(p_scb->p_disc_db)
        {
            (void)SDP_CancelServiceSearch (p_scb->p_disc_db);
        }
        */
    }
}