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
struct net_buf {int /*<<< orphan*/  b; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct k_work {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  local_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLE_MESH_NET_IF_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ bt_mesh ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_buf* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_buf*) ; 

__attribute__((used)) static void FUNC5(struct k_work *work)
{
    struct net_buf *buf;

    while ((buf = FUNC3(&bt_mesh.local_queue))) {
        FUNC0("len %u: %s", buf->len, FUNC1(buf->data, buf->len));
        FUNC2(&buf->b, 0, BLE_MESH_NET_IF_LOCAL);
        FUNC4(buf);
    }
}