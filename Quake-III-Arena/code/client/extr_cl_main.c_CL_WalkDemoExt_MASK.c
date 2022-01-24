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
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_OSPATH ; 
 scalar_t__* demo_protocols ; 
 int /*<<< orphan*/  qtrue ; 

__attribute__((used)) static void FUNC3(char *arg, char *name, int *demofile)
{
	int i = 0;
	*demofile = 0;
	while(demo_protocols[i])
	{
		FUNC1 (name, MAX_OSPATH, "demos/%s.dm_%d", arg, demo_protocols[i]);
		FUNC2( name, demofile, qtrue );
		if (*demofile)
		{
			FUNC0("Demo file: %s\n", name);
			break;
		}
		else
			FUNC0("Not found: %s\n", name);
		i++;
	}
}