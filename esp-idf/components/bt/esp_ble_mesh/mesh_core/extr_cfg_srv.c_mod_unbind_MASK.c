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
typedef  scalar_t__ u16_t ;
struct bt_mesh_model {scalar_t__* keys; TYPE_1__* pub; } ;
struct TYPE_2__ {scalar_t__ key; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  BLE_MESH_ADDR_UNASSIGNED ; 
 scalar_t__ BLE_MESH_KEY_UNUSED ; 
 int /*<<< orphan*/  FUNC1 (char*,struct bt_mesh_model*,scalar_t__,int) ; 
 int /*<<< orphan*/  CONFIG_BLE_MESH_SETTINGS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_INVALID_APPKEY ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (struct bt_mesh_model*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct bt_mesh_model*) ; 

__attribute__((used)) static u8_t FUNC6(struct bt_mesh_model *model, u16_t key_idx, bool store)
{
    int i;

    FUNC1("model %p key_idx 0x%03x store %u", model, key_idx, store);

    if (!FUNC4(key_idx)) {
        return STATUS_INVALID_APPKEY;
    }

    for (i = 0; i < FUNC0(model->keys); i++) {
        if (model->keys[i] != key_idx) {
            continue;
        }

        model->keys[i] = BLE_MESH_KEY_UNUSED;

        if (FUNC2(CONFIG_BLE_MESH_SETTINGS) && store) {
            FUNC5(model);
        }

        if (model->pub && model->pub->key == key_idx) {
            FUNC3(model, BLE_MESH_ADDR_UNASSIGNED,
                         0, 0, 0, 0, 0, store);
        }
    }

    return STATUS_SUCCESS;
}