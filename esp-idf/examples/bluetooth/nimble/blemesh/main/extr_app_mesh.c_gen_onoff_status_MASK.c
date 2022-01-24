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
typedef  int /*<<< orphan*/  uint8_t ;
struct os_mbuf {int dummy; } ;
struct bt_mesh_msg_ctx {int dummy; } ;
struct bt_mesh_model {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct os_mbuf* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct os_mbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct bt_mesh_model*,struct bt_mesh_msg_ctx*,struct os_mbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gen_on_off_state ; 
 int /*<<< orphan*/ * FUNC5 (struct os_mbuf*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct os_mbuf*) ; 
 int /*<<< orphan*/  tag ; 

__attribute__((used)) static void FUNC7(struct bt_mesh_model *model,
                             struct bt_mesh_msg_ctx *ctx)
{
    struct os_mbuf *msg = FUNC2(3);
    uint8_t *status;

    FUNC1(tag, "#mesh-onoff STATUS\n");

    FUNC3(msg, FUNC0(0x82, 0x04));
    status = FUNC5(msg, 1);
    *status = gen_on_off_state;

    if (FUNC4(model, ctx, msg, NULL, NULL)) {
        FUNC1(tag, "#mesh-onoff STATUS: send status failed\n");
    }

    FUNC6(msg);
}