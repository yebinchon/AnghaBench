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
typedef  int /*<<< orphan*/  u16_t ;
struct net_buf_simple {int len; } ;
struct bt_mesh_model {int dummy; } ;
struct bt_mesh_elem {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 struct bt_mesh_model* FUNC1 (struct bt_mesh_elem*,int /*<<< orphan*/ ) ; 
 struct bt_mesh_model* FUNC2 (struct bt_mesh_elem*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_buf_simple*) ; 

__attribute__((used)) static struct bt_mesh_model *FUNC4(struct bt_mesh_elem *elem,
                                       struct net_buf_simple *buf, bool *vnd)
{
    if (buf->len < 4) {
        u16_t id;

        id = FUNC3(buf);

        FUNC0("ID 0x%04x addr 0x%04x", id, elem->addr);

        *vnd = false;

        return FUNC1(elem, id);
    } else {
        u16_t company, id;

        company = FUNC3(buf);
        id = FUNC3(buf);

        FUNC0("Company 0x%04x ID 0x%04x addr 0x%04x", company, id,
               elem->addr);

        *vnd = true;

        return FUNC2(elem, company, id);
    }
}