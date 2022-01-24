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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fasttrap_cleanup_mtx ; 
 int /*<<< orphan*/  fasttrap_cleanup_work ; 
 int /*<<< orphan*/  fasttrap_pid_cleanup_cb ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(uint32_t work)
{
	FUNC2(&fasttrap_cleanup_mtx);
	FUNC0(&fasttrap_cleanup_work, work);
	FUNC1();
	FUNC4(&fasttrap_pid_cleanup_cb);
	FUNC3(&fasttrap_cleanup_mtx);
}