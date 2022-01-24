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
struct host_notify_entry {int dummy; } ;

/* Variables and functions */
 int HOST_NOTIFY_TYPE_MAX ; 
 int /*<<< orphan*/  host_notify_lock ; 
 int /*<<< orphan*/  host_notify_lock_attr ; 
 int /*<<< orphan*/  host_notify_lock_ext ; 
 int /*<<< orphan*/  host_notify_lock_grp ; 
 int /*<<< orphan*/  host_notify_lock_grp_attr ; 
 int /*<<< orphan*/ * host_notify_queue ; 
 int /*<<< orphan*/  host_notify_zone ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,char*) ; 

void
FUNC6(void)
{
	int		i;

	for (i = 0; i <= HOST_NOTIFY_TYPE_MAX; i++)
		FUNC4(&host_notify_queue[i]);

	FUNC1(&host_notify_lock_grp_attr);
	FUNC2(&host_notify_lock_grp, "host_notify", &host_notify_lock_grp_attr);
	FUNC0(&host_notify_lock_attr);

	FUNC3(&host_notify_lock, &host_notify_lock_ext, &host_notify_lock_grp, &host_notify_lock_attr);

	i = sizeof (struct host_notify_entry);
	host_notify_zone =
			FUNC5(i, (4096 * i), (16 * i), "host_notify");
}