#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int nat_traversal_task_oustanding; int /*<<< orphan*/  tcp_port; int /*<<< orphan*/  nat_traversal_state; } ;
typedef  TYPE_1__ netplay_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(netplay_t *netplay)
{
   FUNC0(&netplay->nat_traversal_state, 0, sizeof(netplay->nat_traversal_state));
   netplay->nat_traversal_task_oustanding = true;
   FUNC1(&netplay->nat_traversal_state, netplay->tcp_port);
}