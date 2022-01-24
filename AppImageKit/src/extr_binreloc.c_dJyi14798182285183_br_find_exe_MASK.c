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
 char* exe ; 
 char* FUNC0 (char const*) ; 

char *
FUNC1 (const char *default_exe)
{
	if (exe == (char *) NULL) {
		/* BinReloc is not initialized. */
		if (default_exe != (const char *) NULL)
			return FUNC0 (default_exe);
		else
			return (char *) NULL;
	}
	return FUNC0 (exe);
}