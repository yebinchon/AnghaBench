#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_buf {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct bt_mesh_send_cb {int dummy; } ;
struct TYPE_4__ {int relay; void* arg; } ;
typedef  TYPE_1__ bt_mesh_msg_t ;
struct TYPE_5__ {unsigned int busy; void* cb_data; struct bt_mesh_send_cb const* cb; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct net_buf*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct net_buf*) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 

void FUNC5(struct net_buf *buf, const struct bt_mesh_send_cb *cb,
                      void *cb_data)
{
    bt_mesh_msg_t msg = {
        .relay = false,
    };

    FUNC1("type 0x%02x len %u: %s", FUNC0(buf)->type, buf->len,
           FUNC2(buf->data, buf->len));

    FUNC0(buf)->cb = cb;
    FUNC0(buf)->cb_data = cb_data;
    FUNC0(buf)->busy = 1U;

    msg.arg = (void *)FUNC4(buf);
    FUNC3(&msg, portMAX_DELAY);
}