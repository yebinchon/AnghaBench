#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8_t ;
typedef  int /*<<< orphan*/  u16_t ;
typedef  int tGATT_IF ;
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLE_MESH_ADDR_PUBLIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BLE_MESH_DEV_ACTIVE_SCAN ; 
 int /*<<< orphan*/  BLE_MESH_SCAN_ACTIVE ; 
 int /*<<< orphan*/  BLE_MESH_SP_ADV_ALL ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ bt_mesh_dev ; 
 int /*<<< orphan*/  bt_mesh_scan_results_cb ; 

__attribute__((used)) static int FUNC5(u8_t scan_type, u16_t interval, u16_t window, u8_t filter_dup)
{
    UINT8 scan_fil_policy = BLE_MESH_SP_ADV_ALL; /* No whitelist for BLE Mesh */
    UINT8 addr_type_own = BLE_MESH_ADDR_PUBLIC;  /* Currently only support Public Address */
    tGATT_IF client_if = 0xFF; /* Default GATT interface id */

    FUNC0(
        FUNC2(client_if, interval, window, scan_type, addr_type_own,
                                   filter_dup, scan_fil_policy, NULL));

    /* BLE Mesh scan permanently, so no duration of scan here */
    FUNC0(FUNC1(true, 0, bt_mesh_scan_results_cb, NULL, NULL));

#if BLE_MESH_DEV
    if (scan_type == BLE_MESH_SCAN_ACTIVE) {
        bt_mesh_atomic_set_bit(bt_mesh_dev.flags, BLE_MESH_DEV_ACTIVE_SCAN);
    } else {
        bt_mesh_atomic_clear_bit(bt_mesh_dev.flags, BLE_MESH_DEV_ACTIVE_SCAN);
    }
#endif

    return 0;
}