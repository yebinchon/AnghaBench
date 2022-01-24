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
struct k_work {int dummy; } ;
struct TYPE_2__ {unsigned int ivu_duration; int /*<<< orphan*/  iv_index; int /*<<< orphan*/  flags; int /*<<< orphan*/  ivu_timer; } ;

/* Variables and functions */
 scalar_t__ BLE_MESH_IVU_HOURS ; 
 int /*<<< orphan*/  BLE_MESH_IVU_IN_PROGRESS ; 
 unsigned int BLE_MESH_IVU_MIN_HOURS ; 
 int /*<<< orphan*/  BLE_MESH_IVU_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned int,char*) ; 
 int /*<<< orphan*/  CONFIG_BLE_MESH_SETTINGS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ bt_mesh ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct k_work *work)
{
    bt_mesh.ivu_duration += BLE_MESH_IVU_HOURS;

    FUNC0("%s for %u hour%s",
           FUNC2(bt_mesh.flags, BLE_MESH_IVU_IN_PROGRESS) ?
           "IVU in Progress" : "IVU Normal mode",
           bt_mesh.ivu_duration, bt_mesh.ivu_duration == 1U ? "" : "s");

    if (bt_mesh.ivu_duration < BLE_MESH_IVU_MIN_HOURS) {
        if (FUNC1(CONFIG_BLE_MESH_SETTINGS)) {
            FUNC5(true);
        }

        FUNC6(&bt_mesh.ivu_timer, BLE_MESH_IVU_TIMEOUT);
        return;
    }

    if (FUNC2(bt_mesh.flags, BLE_MESH_IVU_IN_PROGRESS)) {
#if CONFIG_BLE_MESH_NODE
        bt_mesh_beacon_ivu_initiator(true);
#endif
        FUNC4(bt_mesh.iv_index, false);
    } else if (FUNC1(CONFIG_BLE_MESH_SETTINGS)) {
        FUNC5(true);
    }
}