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
struct ifnet {scalar_t__ if_poll_thread; int /*<<< orphan*/  if_poll_lock; int /*<<< orphan*/  if_poll_active; int /*<<< orphan*/  if_poll_req; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 scalar_t__ THREAD_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct ifnet *ifp)
{
	/*
	 * If the poller thread is inactive, signal it to do work.
	 */
	FUNC0(&ifp->if_poll_lock);
	ifp->if_poll_req++;
	if (!ifp->if_poll_active && ifp->if_poll_thread != THREAD_NULL) {
		FUNC2((caddr_t)&ifp->if_poll_thread);
	}
	FUNC1(&ifp->if_poll_lock);
}