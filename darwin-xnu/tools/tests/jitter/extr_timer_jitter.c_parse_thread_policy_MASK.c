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
typedef  int /*<<< orphan*/  my_policy_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  MY_POLICY_FIXEDPRI ; 
 int /*<<< orphan*/  MY_POLICY_REALTIME ; 
 int /*<<< orphan*/  MY_POLICY_TIMESHARE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

my_policy_type_t
FUNC3(const char *str)
{
	if (FUNC2(str, "timeshare") == 0) {
		return MY_POLICY_TIMESHARE;
	} else if (FUNC2(str, "realtime") == 0) {
		return MY_POLICY_REALTIME;
	} else if (FUNC2(str, "fixed") == 0) {
		return MY_POLICY_FIXEDPRI;
	} else {
		FUNC1("Invalid thread policy %s\n", str);
		FUNC0(1);
	}
}