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
struct net_buf {int dummy; } ;
struct TYPE_4__ {scalar_t__ arg; } ;
typedef  TYPE_1__ bt_mesh_msg_t ;
struct TYPE_5__ {unsigned int busy; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct net_buf*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_buf*) ; 

__attribute__((used)) static void FUNC2(bt_mesh_msg_t *msg)
{
    struct net_buf *buf;

    if (msg->arg) {
        buf = (struct net_buf *)msg->arg;
        FUNC0(buf)->busy = 0U;
        FUNC1(buf);
    }

    return;
}