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
typedef  int /*<<< orphan*/  u32_t ;
struct TYPE_2__ {scalar_t__ seq; scalar_t__ iv_index; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLE_MESH_IVU_IN_PROGRESS ; 
 int /*<<< orphan*/  BLE_MESH_KEY_PRIMARY ; 
 int /*<<< orphan*/  CONFIG_BLE_MESH_SETTINGS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IV_UPDATE_SEQ_LIMIT ; 
 TYPE_1__ bt_mesh ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

u32_t FUNC7(void)
{
    u32_t seq = bt_mesh.seq++;

    if (FUNC0(CONFIG_BLE_MESH_SETTINGS)) {
        FUNC5();
    }

    if (!FUNC1(bt_mesh.flags, BLE_MESH_IVU_IN_PROGRESS) &&
            bt_mesh.seq > IV_UPDATE_SEQ_LIMIT &&
            FUNC6(BLE_MESH_KEY_PRIMARY)) {
#if CONFIG_BLE_MESH_NODE
        bt_mesh_beacon_ivu_initiator(true);
#endif
        FUNC3(bt_mesh.iv_index + 1, true);
        FUNC4(NULL);
    }

    return seq;
}