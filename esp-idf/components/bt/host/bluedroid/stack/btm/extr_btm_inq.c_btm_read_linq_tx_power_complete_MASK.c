#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ hci_status; scalar_t__ tx_power; int /*<<< orphan*/  status; } ;
typedef  TYPE_2__ tBTM_INQ_TXPWR_RESULTS ;
typedef  int /*<<< orphan*/  (* tBTM_CMPL_CB ) (TYPE_2__*) ;
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_6__ {int /*<<< orphan*/  (* p_txpwer_cmpl_cb ) (TYPE_2__*) ;int /*<<< orphan*/  txpwer_timer; } ;
struct TYPE_8__ {TYPE_1__ devcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_ERR_PROCESSING ; 
 int /*<<< orphan*/  BTM_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ HCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_5__ btm_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void FUNC4(UINT8 *p)
{
    tBTM_CMPL_CB                *p_cb = &btm_cb.devcb.p_txpwer_cmpl_cb;
    tBTM_INQ_TXPWR_RESULTS        results;

    FUNC2 (&btm_cb.devcb.txpwer_timer);
    /* If there was a callback registered for read inq tx power, call it */
    btm_cb.devcb.p_txpwer_cmpl_cb = NULL;

    if (p_cb) {
        FUNC1  (results.hci_status, p);

        if (results.hci_status == HCI_SUCCESS) {
            results.status = BTM_SUCCESS;

            FUNC1 (results.tx_power, p);
            FUNC0 ("BTM INQ TX POWER Complete: tx_power %d, hci status 0x%02x\n",
                             results.tx_power, results.hci_status);
        } else {
            results.status = BTM_ERR_PROCESSING;
        }

        (*p_cb)(&results);
    }

}