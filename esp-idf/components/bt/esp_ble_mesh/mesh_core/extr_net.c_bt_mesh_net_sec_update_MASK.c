#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct bt_mesh_subnet {int /*<<< orphan*/  net_idx; } ;

/* Variables and functions */
 scalar_t__ BLE_MESH_GATT_PROXY_ENABLED ; 
 int /*<<< orphan*/  BLE_MESH_KEY_ANY ; 
 int /*<<< orphan*/  CONFIG_BLE_MESH_FRIEND ; 
 int /*<<< orphan*/  CONFIG_BLE_MESH_GATT_PROXY_SERVER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct bt_mesh_subnet*) ; 

void FUNC4(struct bt_mesh_subnet *sub)
{
    if (FUNC0(CONFIG_BLE_MESH_FRIEND)) {
        FUNC1(sub ? sub->net_idx : BLE_MESH_KEY_ANY);
    }

    if (FUNC0(CONFIG_BLE_MESH_GATT_PROXY_SERVER) &&
            FUNC2() == BLE_MESH_GATT_PROXY_ENABLED) {
#if CONFIG_BLE_MESH_NODE
        bt_mesh_proxy_beacon_send(sub);
#endif
    }
}