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
 char* FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char const*,char) ; 

char *
FUNC4 (const char *path)
{
	char *end, *result;

	if (path == (const char *) NULL)
		return (char *) NULL;

	end = FUNC3 (path, '/');
	if (end == (const char *) NULL)
		return FUNC2 (".");

	while (end > path && *end == '/')
		end--;
	result = FUNC0 (path, end - path + 1);
	if (result[0] == 0) {
		FUNC1 (result);
		return FUNC2 ("/");
	} else
		return result;
}