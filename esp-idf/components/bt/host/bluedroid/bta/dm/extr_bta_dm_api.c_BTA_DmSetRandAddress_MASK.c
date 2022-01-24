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
typedef  int /*<<< orphan*/  tBTA_SET_RAND_ADDR_CBACK ;
struct TYPE_5__ {int /*<<< orphan*/  event; } ;
struct TYPE_6__ {int /*<<< orphan*/ * p_set_rand_addr_cback; int /*<<< orphan*/  addr_type; TYPE_1__ hdr; int /*<<< orphan*/  address; } ;
typedef  TYPE_2__ tBTA_DM_APT_SET_DEV_ADDR ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BD_ADDR_LEN ; 
 int /*<<< orphan*/  BLE_ADDR_RANDOM ; 
 int /*<<< orphan*/  BTA_DM_API_SET_RAND_ADDR_EVT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 

extern void FUNC5(BD_ADDR rand_addr, tBTA_SET_RAND_ADDR_CBACK *p_set_rand_addr_cback)
{
    tBTA_DM_APT_SET_DEV_ADDR *p_msg;
    FUNC0("set the random address ");
    if ((p_msg = (tBTA_DM_APT_SET_DEV_ADDR *) FUNC4(sizeof(tBTA_DM_APT_SET_DEV_ADDR))) != NULL) {
        FUNC3(p_msg, 0, sizeof(tBTA_DM_APT_SET_DEV_ADDR));
        FUNC2(p_msg->address, rand_addr, BD_ADDR_LEN);
        p_msg->hdr.event = BTA_DM_API_SET_RAND_ADDR_EVT;
        p_msg->addr_type = BLE_ADDR_RANDOM;
        p_msg->p_set_rand_addr_cback = p_set_rand_addr_cback;
        //start sent the msg to the bta system control moudle
        FUNC1(p_msg);
    }
}