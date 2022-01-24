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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CITUS_EXTENSIONVERSION ; 
 int /*<<< orphan*/  CITUS_MAJORVERSION ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  EnableVersionChecks ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static bool
FUNC8(int elevel)
{
	char *installedVersion = NULL;

	FUNC0(FUNC1());
	FUNC0(EnableVersionChecks);

	installedVersion = FUNC2();

	if (!FUNC3(installedVersion, CITUS_EXTENSIONVERSION))
	{
		FUNC4(elevel, (FUNC7("loaded Citus library version differs from installed "
								"extension version"),
						 FUNC5("Loaded library requires %s, but the installed "
								   "extension version is %s.", CITUS_MAJORVERSION,
								   installedVersion),
						 FUNC6("Run ALTER EXTENSION citus UPDATE and try again.")));
		return false;
	}

	return true;
}