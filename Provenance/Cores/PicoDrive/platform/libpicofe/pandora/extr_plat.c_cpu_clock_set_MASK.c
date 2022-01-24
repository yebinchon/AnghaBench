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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 (char*) ; 
 char* pnd_script_base ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,int) ; 

__attribute__((used)) static int FUNC3(int cpu_clock)
{
	char buf[128];

	if (cpu_clock < 14)
		return -1;

	if (cpu_clock == FUNC0())
		return 0;

	FUNC2(buf, sizeof(buf),
		 "unset DISPLAY; echo y | %s/op_cpuspeed.sh %d",
		 pnd_script_base, cpu_clock);
	return FUNC1(buf);
}