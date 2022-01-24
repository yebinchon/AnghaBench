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
struct bt_mesh_model {int dummy; } ;
struct bt_mesh_elem {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_BLE_MESH_SETTINGS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bt_mesh_model*) ; 
 size_t FUNC2 (struct bt_mesh_model*) ; 

__attribute__((used)) static void FUNC3(struct bt_mesh_model *mod, struct bt_mesh_elem *elem,
                      bool vnd, bool primary, void *user_data)
{
    size_t clear_count;

    /* Clear model state that isn't otherwise cleared. E.g. AppKey
     * binding and model publication is cleared as a consequence
     * of removing all app keys, however model subscription clearing
     * must be taken care of here.
     */

    clear_count = FUNC2(mod);

    if (FUNC0(CONFIG_BLE_MESH_SETTINGS) && clear_count) {
        FUNC1(mod);
    }
}