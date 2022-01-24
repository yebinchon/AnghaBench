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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ g_fail_on_error ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3(void *userdata, const char *error)
{
	(void)userdata;
	if (g_fail_on_error)
	{
		FUNC1(stderr, "Error: %s\n", error);
		FUNC0(1);
	}
	else
		FUNC2("Expected error hit: %s.\n", error);
}