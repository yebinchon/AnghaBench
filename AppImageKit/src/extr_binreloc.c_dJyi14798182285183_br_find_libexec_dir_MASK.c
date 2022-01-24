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
 char* FUNC0 (char*,char*) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*) ; 

char *
FUNC4 (const char *default_libexec_dir)
{
	char *prefix, *dir;

	prefix = FUNC1 ((const char *) NULL);
	if (prefix == (char *) NULL) {
		/* BinReloc not initialized. */
		if (default_libexec_dir != (const char *) NULL)
			return FUNC3 (default_libexec_dir);
		else
			return (char *) NULL;
	}

	dir = FUNC0 (prefix, "libexec");
	FUNC2 (prefix);
	return dir;
}