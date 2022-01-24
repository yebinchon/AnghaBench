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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void
FUNC2(int number_of_runs, bool v6, int socket_count)
{
	for (int i = 0; i < number_of_runs; i++) {
		FUNC1(v6, socket_count);
	}
	FUNC0("multithreaded_bind_test %s", v6 ? "IPv6" : "IPv4");
}