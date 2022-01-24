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
struct uthread {int dummy; } ;

/* Variables and functions */
 int THREAD_CHUNK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  rethrottle_lock_attr ; 
 int /*<<< orphan*/  rethrottle_lock_grp ; 
 int /*<<< orphan*/  rethrottle_lock_grp_attr ; 
 int thread_max ; 
 int /*<<< orphan*/ * uthread_zone ; 
 int /*<<< orphan*/ * FUNC4 (int,int,int,char*) ; 

__attribute__((used)) static void
FUNC5(void)
{
	FUNC0(uthread_zone == NULL);

	rethrottle_lock_grp_attr = FUNC3();
	rethrottle_lock_grp = FUNC2("rethrottle", rethrottle_lock_grp_attr);
	rethrottle_lock_attr = FUNC1();

	uthread_zone = FUNC4(sizeof(struct uthread),
	                     thread_max * sizeof(struct uthread),
	                     THREAD_CHUNK * sizeof(struct uthread),
	                     "uthreads");
}