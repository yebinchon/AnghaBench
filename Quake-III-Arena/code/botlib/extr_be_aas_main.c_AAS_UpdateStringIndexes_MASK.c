#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char** configstrings; int /*<<< orphan*/  indexessetup; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 TYPE_1__ aasworld ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 

void FUNC3(int numconfigstrings, char *configstrings[])
{
	int i;
	//set string pointers and copy the strings
	for (i = 0; i < numconfigstrings; i++)
	{
		if (configstrings[i])
		{
			//if (aasworld.configstrings[i]) FreeMemory(aasworld.configstrings[i]);
			aasworld.configstrings[i] = (char *) FUNC0(FUNC2(configstrings[i]) + 1);
			FUNC1(aasworld.configstrings[i], configstrings[i]);
		} //end if
	} //end for
	aasworld.indexessetup = qtrue;
}