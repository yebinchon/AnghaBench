#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int count; TYPE_1__* conn_srvc; } ;
struct TYPE_3__ {scalar_t__ id; int /*<<< orphan*/  peer_bdaddr; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTA_DM_PM_NO_ACTION ; 
 int /*<<< orphan*/  BTA_DM_PM_RESTART ; 
 scalar_t__ BTA_ID_HH ; 
 TYPE_2__ bta_dm_conn_srvcs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(BOOLEAN bScoActive)
{
    int j;

    /* if HID is active, disable the link policy */
    for (j = 0; j < bta_dm_conn_srvcs.count ; j++) {
        /* check if an entry already present */
        if (bta_dm_conn_srvcs.conn_srvc[j].id == BTA_ID_HH ) {
            FUNC0 ("SCO status change(Active: %d), modify HID link policy. state: %d",
                              bScoActive, bta_dm_conn_srvcs.conn_srvc[j].state);
            FUNC3( FUNC1(bta_dm_conn_srvcs.conn_srvc[j].peer_bdaddr), bScoActive);

            /* if we had disabled link policy, seems like the hid device stop retrying SNIFF after a few tries. force sniff if needed */
            if (!bScoActive) {
                FUNC2(bta_dm_conn_srvcs.conn_srvc[j].peer_bdaddr, BTA_DM_PM_NO_ACTION,
                                   BTA_DM_PM_RESTART);
            }
        }
    }

}