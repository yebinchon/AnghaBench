#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
struct TYPE_10__ {int states; int /*<<< orphan*/  features; } ;
struct TYPE_14__ {TYPE_1__ le; int /*<<< orphan*/  manufacturer; int /*<<< orphan*/  lmp_subversion; int /*<<< orphan*/  hci_revision; int /*<<< orphan*/  lmp_version; int /*<<< orphan*/  hci_version; int /*<<< orphan*/ * features; } ;
struct TYPE_13__ {int /*<<< orphan*/ * (* get_ble_supported_states ) () ;TYPE_2__* (* get_bt_version ) () ;TYPE_7__* (* get_features_ble ) () ;} ;
struct TYPE_12__ {int /*<<< orphan*/ * as_array; } ;
struct TYPE_11__ {int /*<<< orphan*/  manufacturer; int /*<<< orphan*/  lmp_subversion; int /*<<< orphan*/  hci_revision; int /*<<< orphan*/  lmp_version; int /*<<< orphan*/  hci_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLE_MESH_HCI_VERSION_5_0 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/  const*) ; 
 TYPE_9__ bt_mesh_dev ; 
 TYPE_8__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 TYPE_7__* FUNC3 () ; 
 TYPE_2__* FUNC4 () ; 
 TYPE_2__* FUNC5 () ; 
 TYPE_2__* FUNC6 () ; 
 TYPE_2__* FUNC7 () ; 
 TYPE_2__* FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 () ; 

void FUNC10(void)
{
    const uint8_t *features = FUNC1()->get_features_ble()->as_array;
    if (features != NULL) {
        FUNC2(bt_mesh_dev.features[0], features, 8);
        FUNC2(bt_mesh_dev.le.features, features, 8);
    }

    /**
     * Currently 20ms non-connectable adv interval is supported, and we need to add
     * a flag to indicate this support.
     */
#ifdef CONFIG_BLE_MESH_HCI_5_0
    bt_mesh_dev.hci_version = BLE_MESH_HCI_VERSION_5_0;
#else
    bt_mesh_dev.hci_version = FUNC1()->get_bt_version()->hci_version;
#endif
    bt_mesh_dev.lmp_version = FUNC1()->get_bt_version()->lmp_version;
    bt_mesh_dev.hci_revision = FUNC1()->get_bt_version()->hci_revision;
    bt_mesh_dev.lmp_subversion = FUNC1()->get_bt_version()->lmp_subversion;
    bt_mesh_dev.manufacturer = FUNC1()->get_bt_version()->manufacturer;

    const uint8_t *p = FUNC1()->get_ble_supported_states();
    uint64_t states_fh = 0, states_sh = 0;
    FUNC0(states_fh, p);
    FUNC0(states_sh, p);
    bt_mesh_dev.le.states = (states_sh << 32) | states_fh;
}