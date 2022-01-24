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
struct flowadv_fclist {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct flowadv_fclist*,struct flowadv_fclist*) ; 
 scalar_t__ FUNC1 (struct flowadv_fclist*) ; 
 scalar_t__ THREAD_NULL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  fadv_active ; 
 struct flowadv_fclist fadv_list ; 
 int /*<<< orphan*/  fadv_lock ; 
 scalar_t__ fadv_thread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(struct flowadv_fclist *fcl)
{
	if (FUNC1(fcl))
		return;

	FUNC3(&fadv_lock);

	FUNC0(&fadv_list, fcl);
	FUNC2(!FUNC1(&fadv_list));

	if (!fadv_active && fadv_thread != THREAD_NULL)
		FUNC5((caddr_t)&fadv_list);

	FUNC4(&fadv_lock);
}