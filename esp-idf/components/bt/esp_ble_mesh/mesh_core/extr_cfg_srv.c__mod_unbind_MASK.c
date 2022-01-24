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
struct unbind_data {int /*<<< orphan*/  store; int /*<<< orphan*/  app_idx; } ;
struct bt_mesh_model {int dummy; } ;
struct bt_mesh_elem {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bt_mesh_model*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct bt_mesh_model *mod, struct bt_mesh_elem *elem,
                        bool vnd, bool primary, void *user_data)
{
    struct unbind_data *data = user_data;

    FUNC0(mod, data->app_idx, data->store);
}