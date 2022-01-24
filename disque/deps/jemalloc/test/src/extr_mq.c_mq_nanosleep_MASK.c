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
struct timespec {int tv_sec; unsigned int tv_nsec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*,int /*<<< orphan*/ *) ; 

void
FUNC3(unsigned ns)
{

	FUNC1(ns <= 1000*1000*1000);

#ifdef _WIN32
	Sleep(ns / 1000);
#else
	{
		struct timespec timeout;

		if (ns < 1000*1000*1000) {
			timeout.tv_sec = 0;
			timeout.tv_nsec = ns;
		} else {
			timeout.tv_sec = 1;
			timeout.tv_nsec = 0;
		}
		FUNC2(&timeout, NULL);
	}
#endif
}