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
 int FALSE ; 
 int RTIME_enabled ; 
 int TRUE ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

int FUNC2(char *string, char *ptr)
{
	if (FUNC1(string, "RTIME") == 0) {
		int value = FUNC0(ptr);
		if (value < 0)
			return FALSE;
		RTIME_enabled = value;
	}
	else return FALSE;
	return TRUE;
}