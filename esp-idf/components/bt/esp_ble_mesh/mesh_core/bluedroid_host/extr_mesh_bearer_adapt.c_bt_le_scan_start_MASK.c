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
struct bt_mesh_scan_param {scalar_t__ filter_dup; int /*<<< orphan*/  window; int /*<<< orphan*/  interval; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  bt_mesh_scan_cb_t ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLE_MESH_DEV_SCANNING ; 
 int /*<<< orphan*/  BLE_MESH_DEV_SCAN_FILTER_DUP ; 
 int EALREADY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ bt_mesh_dev ; 
 int /*<<< orphan*/  bt_mesh_scan_dev_found_cb ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct bt_mesh_scan_param const*) ; 

int FUNC5(const struct bt_mesh_scan_param *param, bt_mesh_scan_cb_t cb)
{
    int err;

#if BLE_MESH_DEV
    if (bt_mesh_atomic_test_bit(bt_mesh_dev.flags, BLE_MESH_DEV_SCANNING)) {
        return -EALREADY;
    }
#endif

    if (!FUNC4(param)) {
        return -EINVAL;
    }

#if BLE_MESH_DEV
    if (param->filter_dup) {
        bt_mesh_atomic_set_bit(bt_mesh_dev.flags, BLE_MESH_DEV_SCAN_FILTER_DUP);
    } else {
        bt_mesh_atomic_clear_bit(bt_mesh_dev.flags, BLE_MESH_DEV_SCAN_FILTER_DUP);
    }
#endif

    err = FUNC3(param->type, param->interval, param->window, param->filter_dup);
    if (err) {
        return err;
    }

#if BLE_MESH_DEV
    bt_mesh_atomic_set_bit(bt_mesh_dev.flags, BLE_MESH_DEV_SCANNING);
#endif

    bt_mesh_scan_dev_found_cb = cb;
    return err;
}