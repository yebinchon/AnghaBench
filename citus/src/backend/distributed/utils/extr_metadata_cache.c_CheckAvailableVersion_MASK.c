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
 char* FUNC0 () ; 
 int /*<<< orphan*/  CITUS_EXTENSIONVERSION ; 
 int /*<<< orphan*/  CITUS_MAJORVERSION ; 
 int /*<<< orphan*/  EnableVersionChecks ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

bool
FUNC6(int elevel)
{
	char *availableVersion = NULL;

	if (!EnableVersionChecks)
	{
		return true;
	}

	availableVersion = FUNC0();

	if (!FUNC1(availableVersion, CITUS_EXTENSIONVERSION))
	{
		FUNC2(elevel, (FUNC5("loaded Citus library version differs from latest "
								"available extension version"),
						 FUNC3("Loaded library requires %s, but the latest control "
								   "file specifies %s.", CITUS_MAJORVERSION,
								   availableVersion),
						 FUNC4("Restart the database to load the latest Citus "
								 "library.")));
		return false;
	}

	return true;
}