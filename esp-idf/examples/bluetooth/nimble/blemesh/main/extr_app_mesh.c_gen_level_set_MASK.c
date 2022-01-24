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
struct os_mbuf {int dummy; } ;
struct bt_mesh_msg_ctx {int dummy; } ;
struct bt_mesh_model {int dummy; } ;
typedef  scalar_t__ int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ gen_level_state ; 
 int /*<<< orphan*/  FUNC1 (struct bt_mesh_model*,struct bt_mesh_msg_ctx*) ; 
 scalar_t__ FUNC2 (struct os_mbuf*) ; 
 int /*<<< orphan*/  tag ; 

__attribute__((used)) static void FUNC3(struct bt_mesh_model *model,
                          struct bt_mesh_msg_ctx *ctx,
                          struct os_mbuf *buf)
{
    int16_t level;

    level = (int16_t) FUNC2(buf);
    FUNC0(tag, "#mesh-level SET: level=%d\n", level);

    FUNC1(model, ctx);

    gen_level_state = level;
    FUNC0(tag, "#mesh-level: level=%d\n", gen_level_state);
}