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
 int /*<<< orphan*/  BLE_MESH_DEV_ADVERTISING ; 
 int /*<<< orphan*/  BLE_MESH_DEV_KEEP_ADVERTISING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ bt_mesh_dev ; 

int FUNC3(void)
{
#if BLE_MESH_DEV
    bt_mesh_atomic_clear_bit(bt_mesh_dev.flags, BLE_MESH_DEV_KEEP_ADVERTISING);
    if (!bt_mesh_atomic_test_bit(bt_mesh_dev.flags, BLE_MESH_DEV_ADVERTISING)) {
        return 0;
    }
#endif
    FUNC0();

#if BLE_MESH_DEV
    bt_mesh_atomic_clear_bit(bt_mesh_dev.flags, BLE_MESH_DEV_ADVERTISING);
#endif

    return 0;
}