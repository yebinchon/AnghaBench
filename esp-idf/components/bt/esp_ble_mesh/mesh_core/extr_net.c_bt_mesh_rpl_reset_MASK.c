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
struct bt_mesh_rpl {int old_iv; scalar_t__ src; } ;
struct TYPE_2__ {struct bt_mesh_rpl* rpl; } ;

/* Variables and functions */
 int FUNC0 (struct bt_mesh_rpl*) ; 
 TYPE_1__ bt_mesh ; 
 int /*<<< orphan*/  FUNC1 (struct bt_mesh_rpl*,int /*<<< orphan*/ ,int) ; 

void FUNC2(void)
{
    int i;

    /* Discard "old old" IV Index entries from RPL and flag
     * any other ones (which are valid) as old.
     */
    for (i = 0; i < FUNC0(bt_mesh.rpl); i++) {
        struct bt_mesh_rpl *rpl = &bt_mesh.rpl[i];

        if (rpl->src) {
            if (rpl->old_iv) {
                (void)FUNC1(rpl, 0, sizeof(*rpl));
            } else {
                rpl->old_iv = true;
            }
        }
    }
}