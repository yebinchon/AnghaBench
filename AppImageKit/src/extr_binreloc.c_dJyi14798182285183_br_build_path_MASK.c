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
 char* FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t FUNC2 (char const*) ; 

char *
FUNC3 (const char *dir, const char *file)
{
	char *dir2, *result;
	size_t len;
	int must_free = 0;

	len = FUNC2 (dir);
	if (len > 0 && dir[len - 1] != '/') {
		dir2 = FUNC0 (dir, "/");
		must_free = 1;
	} else
		dir2 = (char *) dir;

	result = FUNC0 (dir2, file);
	if (must_free)
		FUNC1 (dir2);
	return result;
}