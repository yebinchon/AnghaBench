#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tBTA_SYS_CONN_STATUS ;
typedef  scalar_t__ UINT8 ;
struct TYPE_5__ {int /*<<< orphan*/ * p_cback; } ;
struct TYPE_4__ {scalar_t__ state; int /*<<< orphan*/  colli_tmr_on; TYPE_2__ colli_timer; scalar_t__ p_disc_db; } ;
struct TYPE_6__ {TYPE_1__ scb; } ;
typedef  int /*<<< orphan*/  TIMER_CBACK ;
typedef  scalar_t__ BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BTA_HF_CLIENT_COLLISION_TIMER ; 
 scalar_t__ BTA_HF_CLIENT_INIT_ST ; 
 scalar_t__ BTA_HF_CLIENT_OPENING_ST ; 
 scalar_t__ BTA_ID_HS ; 
 scalar_t__ BTA_ID_SYS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_3__ bta_hf_client_cb ; 
 int /*<<< orphan*/  bta_hf_client_colli_timer_cback ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6 (tBTA_SYS_CONN_STATUS status, UINT8 id,
                                    UINT8 app_id, BD_ADDR peer_addr)
{
    FUNC2(status);
    FUNC2(app_id);
    FUNC2(peer_addr);

    if (bta_hf_client_cb.scb.state == BTA_HF_CLIENT_OPENING_ST) {
        if (id == BTA_ID_SYS) { /* ACL collision */
            FUNC0 ("HF Client found collision (ACL) ...");
        } else if (id == BTA_ID_HS) { /* RFCOMM collision */
            FUNC0 ("HF Client found collision (RFCOMM) ...");
        } else {
            FUNC0 ("HF Client found collision (\?\?\?) ...");
        }

        bta_hf_client_cb.scb.state = BTA_HF_CLIENT_INIT_ST;

        /* Cancel SDP if it had been started. */
        if (bta_hf_client_cb.scb.p_disc_db) {
            (void)FUNC1 (bta_hf_client_cb.scb.p_disc_db);
            FUNC3(NULL);
        }

        /* reopen registered server */
        /* Collision may be detected before or after we close servers. */
        FUNC4();

        /* Start timer to handle connection opening restart */
        bta_hf_client_cb.scb.colli_timer.p_cback = (TIMER_CBACK *)&bta_hf_client_colli_timer_cback;
        FUNC5(&bta_hf_client_cb.scb.colli_timer, 0, BTA_HF_CLIENT_COLLISION_TIMER);
        bta_hf_client_cb.scb.colli_tmr_on = TRUE;
    }
}