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
struct bt_mesh_subnet {scalar_t__ net_idx; int /*<<< orphan*/ * keys; } ;
struct bt_mesh_app_key {scalar_t__ net_idx; int updated; int /*<<< orphan*/ * keys; } ;
struct TYPE_2__ {struct bt_mesh_app_key* app_keys; } ;

/* Variables and functions */
 int FUNC0 (struct bt_mesh_app_key*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 TYPE_1__ bt_mesh ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC3(struct bt_mesh_subnet *sub)
{
    int i;

    FUNC1("idx 0x%04x", sub->net_idx);

    FUNC2(&sub->keys[0], &sub->keys[1], sizeof(sub->keys[0]));

    for (i = 0; i < FUNC0(bt_mesh.app_keys); i++) {
        struct bt_mesh_app_key *key = &bt_mesh.app_keys[i];

        if (key->net_idx != sub->net_idx || !key->updated) {
            continue;
        }

        FUNC2(&key->keys[0], &key->keys[1], sizeof(key->keys[0]));
        key->updated = false;
    }
}