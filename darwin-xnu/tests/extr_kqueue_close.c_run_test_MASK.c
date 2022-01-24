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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  poll_kqueue ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int timeout_ms ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6()
{
	int fd = FUNC2();
	T_QUIET; FUNC0(fd, "kqueue");

	pthread_t thread;
	int rv = FUNC3(&thread, NULL, poll_kqueue,
	                        (void *)(uintptr_t)fd);
	T_QUIET; FUNC0(rv, "pthread_create");

	FUNC5(timeout_ms * 1000);

	rv = FUNC1(fd);
	FUNC0(rv, "close");

	rv = FUNC4(thread, NULL);
	T_QUIET; FUNC0(rv, "pthread_join");
}