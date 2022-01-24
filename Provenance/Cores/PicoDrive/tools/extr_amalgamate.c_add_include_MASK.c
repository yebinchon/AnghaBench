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
typedef  int /*<<< orphan*/  processed_inc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char const** includes ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 
 char* FUNC4 (char*) ; 

__attribute__((used)) static const char *FUNC5(const char *include)
{
	int i;
	char processed_inc[128+4];

	// must first quote relative includes
	FUNC2(processed_inc, sizeof(processed_inc), (include[0] != '<') ? "\"%s\"" : "%s", include);

	// find in include list
	for (i = 0; includes[i] && i < 128; i++)
	{
		if (FUNC3(processed_inc, includes[i]) == 0) break;
	}
	if (i == 128) FUNC0("add_include: includes overflowed\n");
	if (includes[i] != NULL)
	{
		FUNC1("already have: %s\n", processed_inc);
		return NULL;
	}
	else
	{
		FUNC1("adding: %s\n", processed_inc);
		includes[i] = FUNC4(processed_inc);
		if (includes[i] == NULL) FUNC0("add_include: OOM\n");
		return includes[i];
	}
}