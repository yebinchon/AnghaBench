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
 char* build_directory ; 
 char* FUNC0 (unsigned int) ; 
 char* object_directory ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char*,char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 

char *
FUNC3(const char *file)
{
	char *cp;

	cp = FUNC0((unsigned)(FUNC2(build_directory)+
			       FUNC2(file)+
			       FUNC2(object_directory)+
			       3));
	(void) FUNC1(cp, "%s/%s/%s", object_directory, build_directory, file);
	return (cp);
}