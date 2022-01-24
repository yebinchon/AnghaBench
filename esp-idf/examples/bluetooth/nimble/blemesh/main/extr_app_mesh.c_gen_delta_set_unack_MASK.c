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
 scalar_t__ FUNC1 (struct os_mbuf*) ; 
 int /*<<< orphan*/  tag ; 

__attribute__((used)) static void FUNC2(struct bt_mesh_model *model,
                                struct bt_mesh_msg_ctx *ctx,
                                struct os_mbuf *buf)
{
    int16_t delta_level;

    delta_level = (int16_t) FUNC1(buf);
    FUNC0(tag, "#mesh-level DELTA-SET: delta_level=%d\n", delta_level);

    gen_level_state += delta_level;
    FUNC0(tag, "#mesh-level: level=%d\n", gen_level_state);
}