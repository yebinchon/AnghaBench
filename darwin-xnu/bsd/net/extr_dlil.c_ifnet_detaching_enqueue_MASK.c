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
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  if_detaching_link ; 
 int /*<<< orphan*/  ifnet_delayed_run ; 
 scalar_t__ ifnet_detaching_cnt ; 
 int /*<<< orphan*/  ifnet_detaching_head ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ifnet *ifp)
{
	FUNC2();

	++ifnet_detaching_cnt;
	FUNC1(ifnet_detaching_cnt != 0);
	FUNC0(&ifnet_detaching_head, ifp, if_detaching_link);
	FUNC3((caddr_t)&ifnet_delayed_run);
}