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
typedef  int /*<<< orphan*/  u8_t ;
typedef  scalar_t__ u16_t ;
struct bt_mesh_model {scalar_t__* keys; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 scalar_t__ BLE_MESH_KEY_UNUSED ; 
 int /*<<< orphan*/  FUNC1 (char*,struct bt_mesh_model*,scalar_t__) ; 
 int /*<<< orphan*/  CONFIG_BLE_MESH_SETTINGS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_INSUFF_RESOURCES ; 
 int /*<<< orphan*/  STATUS_INVALID_APPKEY ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct bt_mesh_model*) ; 

__attribute__((used)) static u8_t FUNC5(struct bt_mesh_model *model, u16_t key_idx)
{
    int i;

    FUNC1("model %p key_idx 0x%03x", model, key_idx);

    if (!FUNC3(key_idx)) {
        return STATUS_INVALID_APPKEY;
    }

    for (i = 0; i < FUNC0(model->keys); i++) {
        /* Treat existing binding as success */
        if (model->keys[i] == key_idx) {
            return STATUS_SUCCESS;
        }
    }

    for (i = 0; i < FUNC0(model->keys); i++) {
        if (model->keys[i] == BLE_MESH_KEY_UNUSED) {
            model->keys[i] = key_idx;

            if (FUNC2(CONFIG_BLE_MESH_SETTINGS)) {
                FUNC4(model);
            }

            return STATUS_SUCCESS;
        }
    }

    return STATUS_INSUFF_RESOURCES;
}