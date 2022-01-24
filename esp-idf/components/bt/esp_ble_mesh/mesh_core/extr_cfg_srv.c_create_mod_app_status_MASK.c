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
typedef  int /*<<< orphan*/  u16_t ;
struct net_buf_simple {int dummy; } ;
struct bt_mesh_model {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_MOD_APP_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct net_buf_simple*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_buf_simple*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_buf_simple*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_buf_simple*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct net_buf_simple *msg,
                                  struct bt_mesh_model *mod, bool vnd,
                                  u16_t elem_addr, u16_t app_idx,
                                  u8_t status, u8_t *mod_id)
{
    FUNC0(msg, OP_MOD_APP_STATUS);

    FUNC4(msg, status);
    FUNC3(msg, elem_addr);
    FUNC3(msg, app_idx);

    if (vnd) {
        FUNC1(FUNC2(msg, 4), mod_id, 4);
    } else {
        FUNC1(FUNC2(msg, 2), mod_id, 2);
    }
}