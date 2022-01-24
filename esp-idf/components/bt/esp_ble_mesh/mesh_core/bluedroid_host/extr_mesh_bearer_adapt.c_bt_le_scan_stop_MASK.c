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
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BLE_MESH_DEV_SCANNING ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ bt_mesh_dev ; 
 int /*<<< orphan*/ * bt_mesh_scan_dev_found_cb ; 

int FUNC4(void)
{
#if BLE_MESH_DEV
    if (bt_mesh_atomic_test_bit(bt_mesh_dev.flags, BLE_MESH_DEV_SCANNING)) {
        bt_mesh_atomic_clear_bit(bt_mesh_dev.flags, BLE_MESH_DEV_SCANNING);
        BLE_MESH_BTM_CHECK_STATUS(BTM_BleScan(false, 0, NULL, NULL, NULL));
    }
#else
    FUNC0(FUNC1(false, 0, NULL, NULL, NULL));
#endif

    bt_mesh_scan_dev_found_cb = NULL;
    return 0;
}