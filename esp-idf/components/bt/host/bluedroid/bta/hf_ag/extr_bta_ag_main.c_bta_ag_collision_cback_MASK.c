#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tBTA_SYS_CONN_STATUS ;
struct TYPE_8__ {scalar_t__ param; int /*<<< orphan*/ * p_cback; } ;
struct TYPE_7__ {scalar_t__ state; int /*<<< orphan*/  colli_tmr_on; TYPE_2__ colli_timer; int /*<<< orphan*/  reg_services; scalar_t__ p_disc_db; } ;
typedef  TYPE_1__ tBTA_AG_SCB ;
typedef  scalar_t__ UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  int /*<<< orphan*/  TIMER_CBACK ;
typedef  scalar_t__ INT32 ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BTA_AG_COLLISION_TIMER ; 
 scalar_t__ BTA_AG_INIT_ST ; 
 scalar_t__ BTA_AG_OPENING_ST ; 
 scalar_t__ BTA_ID_AG ; 
 scalar_t__ BTA_ID_SYS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  bta_ag_colli_timer_cback ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9 (tBTA_SYS_CONN_STATUS status, UINT8 id, UINT8 app_id, BD_ADDR peer_addr)
{
    UINT16  handle;
    tBTA_AG_SCB *p_scb;
    FUNC2(status);
    FUNC2(app_id);

    /* Check if we have opening scb for the peer device. */
    handle = FUNC4 (peer_addr);
    p_scb = FUNC6 (handle);

    if (p_scb && (p_scb->state == BTA_AG_OPENING_ST)) {
        if (id == BTA_ID_SYS) {
            /* ACL collision */
            FUNC0 ("AG found collision (ACL) ...");
        } else if (id == BTA_ID_AG) {
            /* RFCOMM collision */
            FUNC0 ("AG found collision (RFCOMM) ...");
        } else {
            FUNC0 ("AG found collision (\?\?\?) ...");
        }
        p_scb->state = BTA_AG_INIT_ST;
        /* Cancel SDP if it had been started. */
        if(p_scb->p_disc_db) {
            (void)FUNC1 (p_scb->p_disc_db);
            FUNC3(p_scb, NULL);
        }
        /* reopen registered servers */
        /* Collision may be detected before or after we close servers. */
        if (FUNC5 (p_scb)) {
            FUNC7(p_scb, p_scb->reg_services);
        }
        /* Start timer to han */
        p_scb->colli_timer.p_cback = (TIMER_CBACK*)&bta_ag_colli_timer_cback;
        p_scb->colli_timer.param = (INT32)p_scb;
        FUNC8(&p_scb->colli_timer, 0, BTA_AG_COLLISION_TIMER);
        p_scb->colli_tmr_on = TRUE;
    }
}