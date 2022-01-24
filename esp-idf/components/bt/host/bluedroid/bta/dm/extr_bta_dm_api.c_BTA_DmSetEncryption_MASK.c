#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTA_TRANSPORT ;
typedef  int /*<<< orphan*/  tBTA_DM_ENCRYPT_CBACK ;
typedef  int /*<<< orphan*/  tBTA_DM_BLE_SEC_ACT ;
struct TYPE_5__ {int /*<<< orphan*/  event; } ;
struct TYPE_6__ {int /*<<< orphan*/  sec_act; int /*<<< orphan*/ * p_callback; int /*<<< orphan*/  transport; int /*<<< orphan*/  bd_addr; TYPE_1__ hdr; } ;
typedef  TYPE_2__ tBTA_DM_API_SET_ENCRYPTION ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BD_ADDR_LEN ; 
 int /*<<< orphan*/  BTA_DM_API_SET_ENCRYPTION_EVT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 

void FUNC5(BD_ADDR bd_addr, tBTA_TRANSPORT transport, tBTA_DM_ENCRYPT_CBACK *p_callback,
                         tBTA_DM_BLE_SEC_ACT sec_act)
{
    tBTA_DM_API_SET_ENCRYPTION   *p_msg;

    FUNC0("BTA_DmSetEncryption"); //todo
    if ((p_msg = (tBTA_DM_API_SET_ENCRYPTION *) FUNC4(sizeof(tBTA_DM_API_SET_ENCRYPTION))) != NULL) {
        FUNC3(p_msg, 0, sizeof(tBTA_DM_API_SET_ENCRYPTION));

        p_msg->hdr.event = BTA_DM_API_SET_ENCRYPTION_EVT;

        FUNC2(p_msg->bd_addr, bd_addr, BD_ADDR_LEN);
        p_msg->transport    = transport;
        p_msg->p_callback      = p_callback;
        p_msg->sec_act         = sec_act;

        FUNC1(p_msg);
    }
}