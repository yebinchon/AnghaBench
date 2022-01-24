#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {void* status; } ;
typedef  TYPE_2__ tBTM_TX_POWER_RESULTS ;
typedef  void* tBTM_STATUS ;
typedef  int /*<<< orphan*/  (* tBTM_CMPL_CB ) (TYPE_2__*) ;
struct TYPE_8__ {int /*<<< orphan*/  tx_power_timer; int /*<<< orphan*/  (* p_tx_power_cmpl_cb ) (TYPE_2__*) ;} ;
struct TYPE_10__ {TYPE_1__ devcb; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 void* BTM_BUSY ; 
 void* BTM_CMD_STARTED ; 
 int /*<<< orphan*/  BTM_DEV_REPLY_TIMEOUT ; 
 void* BTM_NO_RESOURCES ; 
 int /*<<< orphan*/  BTU_TTYPE_BTM_ACL ; 
 TYPE_6__ btm_cb ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

tBTM_STATUS FUNC5(tBTM_CMPL_CB *p_cb)
{
    BOOLEAN ret;
    tBTM_TX_POWER_RESULTS result;
    /* If someone already waiting on the version, do not allow another */
    if (btm_cb.devcb.p_tx_power_cmpl_cb) {
        result.status = BTM_BUSY;
        (*p_cb)(&result);
        return (BTM_BUSY);
    }

    btm_cb.devcb.p_tx_power_cmpl_cb = *p_cb;
    FUNC1 (&btm_cb.devcb.tx_power_timer, BTU_TTYPE_BTM_ACL,
                         BTM_DEV_REPLY_TIMEOUT);
    ret = FUNC0();

    if(!ret) {
        btm_cb.devcb.p_tx_power_cmpl_cb = NULL;
        FUNC2 (&btm_cb.devcb.tx_power_timer);
        result.status = BTM_NO_RESOURCES;
        (*p_cb)(&result);
        return (BTM_NO_RESOURCES);
    } else {
        return BTM_CMD_STARTED;
    }
}