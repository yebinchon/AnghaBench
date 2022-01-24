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
struct unbind_data {int store; int /*<<< orphan*/  app_idx; } ;
struct bt_mesh_app_key {int /*<<< orphan*/  keys; int /*<<< orphan*/  net_idx; int /*<<< orphan*/  app_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLE_MESH_KEY_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CONFIG_BLE_MESH_SETTINGS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _mod_unbind ; 
 int /*<<< orphan*/  FUNC2 (struct bt_mesh_app_key*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct unbind_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct bt_mesh_app_key *key, bool store)
{
    struct unbind_data data = { .app_idx = key->app_idx, .store = store };

    FUNC0("AppIdx 0x%03x store %u", key->app_idx, store);

    FUNC3(_mod_unbind, &data);

    if (FUNC1(CONFIG_BLE_MESH_SETTINGS) && store) {
        FUNC2(key);
    }

    key->net_idx = BLE_MESH_KEY_UNUSED;
    (void)FUNC4(key->keys, 0, sizeof(key->keys));
}