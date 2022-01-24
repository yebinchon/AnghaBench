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
typedef  unsigned int u8_t ;
struct net_buf_simple {int dummy; } ;
struct bt_mesh_msg_ctx {int dummy; } ;
struct bt_mesh_model {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bt_mesh_model*,unsigned int) ; 
 unsigned int FUNC2 (struct net_buf_simple*) ; 

__attribute__((used)) static void FUNC3(struct bt_mesh_model *model,
                                 struct bt_mesh_msg_ctx *ctx,
                                 struct net_buf_simple *buf)
{
    u8_t time;

    time = FUNC2(buf);

    FUNC0("%u second%s", time, (time == 1U) ? "" : "s");

    FUNC1(model, time);
}