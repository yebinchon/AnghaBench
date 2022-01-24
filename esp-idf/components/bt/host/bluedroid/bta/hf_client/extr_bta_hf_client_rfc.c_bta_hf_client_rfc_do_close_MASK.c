#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  event; } ;
struct TYPE_8__ {TYPE_1__ hdr; } ;
typedef  TYPE_3__ tBTA_HF_CLIENT_RFC ;
typedef  int /*<<< orphan*/  tBTA_HF_CLIENT_DATA ;
struct TYPE_7__ {scalar_t__ p_disc_db; scalar_t__ conn_handle; } ;
struct TYPE_9__ {TYPE_2__ scb; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_HF_CLIENT_RFC_CLOSE_EVT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_5__ bta_hf_client_cb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(tBTA_HF_CLIENT_DATA *p_data)
{
    tBTA_HF_CLIENT_RFC     *p_buf;
    FUNC2(p_data);

    if (bta_hf_client_cb.scb.conn_handle) {
        FUNC0(bta_hf_client_cb.scb.conn_handle);
    } else {
        /* Close API was called while HF Client is in Opening state.        */
        /* Need to trigger the state machine to send callback to the app    */
        /* and move back to INIT state.                                     */
        if ((p_buf = (tBTA_HF_CLIENT_RFC *) FUNC5(sizeof(tBTA_HF_CLIENT_RFC))) != NULL) {
            p_buf->hdr.event = BTA_HF_CLIENT_RFC_CLOSE_EVT;
            FUNC4(p_buf);
        }

        /* Cancel SDP if it had been started. */
        if (bta_hf_client_cb.scb.p_disc_db) {
            (void)FUNC1 (bta_hf_client_cb.scb.p_disc_db);
            FUNC3(NULL);
        }
    }
}