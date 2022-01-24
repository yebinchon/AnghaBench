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
struct bt_mesh_subnet_keys {int /*<<< orphan*/  net_id; int /*<<< orphan*/  beacon; } ;
struct bt_mesh_subnet {int /*<<< orphan*/  auth; struct bt_mesh_subnet_keys* keys; int /*<<< orphan*/  net_idx; scalar_t__ kr_flag; } ;
struct TYPE_2__ {int /*<<< orphan*/  iv_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 TYPE_1__ bt_mesh ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bt_mesh_subnet*) ; 

int FUNC3(struct bt_mesh_subnet *sub)
{
    u8_t flags = FUNC2(sub);
    struct bt_mesh_subnet_keys *keys;

    if (sub->kr_flag) {
        FUNC0("NetIndex %u Using new key", sub->net_idx);
        keys = &sub->keys[1];
    } else {
        FUNC0("NetIndex %u Using current key", sub->net_idx);
        keys = &sub->keys[0];
    }

    FUNC0("flags 0x%02x, IVI 0x%08x", flags, bt_mesh.iv_index);

    return FUNC1(keys->beacon, flags, keys->net_id,
                               bt_mesh.iv_index, sub->auth);
}