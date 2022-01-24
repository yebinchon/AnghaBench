#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  private_addr; } ;
typedef  TYPE_3__ tBTM_LE_RANDOM_CB ;
struct TYPE_5__ {scalar_t__ adv_mode; } ;
struct TYPE_6__ {TYPE_1__ inq_var; TYPE_3__ addr_mgnt_cb; } ;
struct TYPE_8__ {TYPE_2__ ble_ctr_cb; } ;
typedef  scalar_t__ BOOLEAN ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BD_ADDR_LEN ; 
 scalar_t__ BTM_BLE_ADV_DISABLE ; 
 scalar_t__ BTM_BLE_ADV_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_4__ btm_cb ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(BD_ADDR random_bda)
{
    tBTM_LE_RANDOM_CB *p_cb = &btm_cb.ble_ctr_cb.addr_mgnt_cb;
    BOOLEAN     adv_mode = btm_cb.ble_ctr_cb.inq_var.adv_mode ;

    FUNC0 ("btm_set_random_address");

    if (adv_mode  == BTM_BLE_ADV_ENABLE) {
        FUNC1 (BTM_BLE_ADV_DISABLE);
    }

    FUNC3(p_cb->private_addr, random_bda, BD_ADDR_LEN);
    FUNC2(p_cb->private_addr);

    if (adv_mode  == BTM_BLE_ADV_ENABLE) {
        FUNC1 (BTM_BLE_ADV_ENABLE);
    }


}