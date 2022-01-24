#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct bt_mesh_subnet {scalar_t__ net_idx; } ;
struct bt_mesh_app_key {scalar_t__ net_idx; } ;
struct TYPE_7__ {struct bt_mesh_app_key* app_keys; } ;
struct TYPE_5__ {scalar_t__ net_idx; } ;
struct TYPE_6__ {TYPE_1__ hb_pub; } ;

/* Variables and functions */
 int FUNC0 (struct bt_mesh_app_key*) ; 
 scalar_t__ BLE_MESH_KEY_UNUSED ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  CONFIG_BLE_MESH_FRIEND ; 
 int /*<<< orphan*/  CONFIG_BLE_MESH_SETTINGS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__ bt_mesh ; 
 int /*<<< orphan*/  FUNC3 (struct bt_mesh_app_key*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bt_mesh_subnet*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_2__* conf ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct bt_mesh_subnet*,int /*<<< orphan*/ ,int) ; 

void FUNC9(struct bt_mesh_subnet *sub, bool store)
{
    int i;

    FUNC1("NetIdx 0x%03x store %u", sub->net_idx, store);

    if (conf && conf->hb_pub.net_idx == sub->net_idx) {
        FUNC7(conf);

        if (FUNC2(CONFIG_BLE_MESH_SETTINGS) && store) {
            FUNC6();
        }
    }

    /* Delete any app keys bound to this NetKey index */
    for (i = 0; i < FUNC0(bt_mesh.app_keys); i++) {
        struct bt_mesh_app_key *key = &bt_mesh.app_keys[i];

        if (key->net_idx == sub->net_idx) {
            FUNC3(key, store);
        }
    }

    if (FUNC2(CONFIG_BLE_MESH_FRIEND)) {
        FUNC5(sub->net_idx);
    }

    if (FUNC2(CONFIG_BLE_MESH_SETTINGS) && store) {
        FUNC4(sub);
    }

    (void)FUNC8(sub, 0, sizeof(*sub));
    sub->net_idx = BLE_MESH_KEY_UNUSED;
}