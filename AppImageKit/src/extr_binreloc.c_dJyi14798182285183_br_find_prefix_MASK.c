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
 char* FUNC0 (char*) ; 
 char* exe ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 

char *
FUNC3 (const char *default_prefix)
{
	char *dir1, *dir2;

	if (exe == (char *) NULL) {
		/* BinReloc not initialized. */
		if (default_prefix != (const char *) NULL)
			return FUNC2 (default_prefix);
		else
			return (char *) NULL;
	}

	dir1 = FUNC0 (exe);
	dir2 = FUNC0 (dir1);
	FUNC1 (dir1);
	return dir2;
}