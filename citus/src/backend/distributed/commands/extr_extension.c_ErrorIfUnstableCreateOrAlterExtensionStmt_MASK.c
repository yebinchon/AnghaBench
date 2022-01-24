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
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  CITUS_EXTENSIONVERSION ; 
 int /*<<< orphan*/  CITUS_MAJORVERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void
FUNC7(Node *parsetree)
{
	char *newExtensionVersion = FUNC1(parsetree);

	if (newExtensionVersion != NULL)
	{
		/*  explicit version provided in CREATE or ALTER EXTENSION UPDATE; verify */
		if (!FUNC2(newExtensionVersion, CITUS_EXTENSIONVERSION))
		{
			FUNC3(ERROR, (FUNC6("specified version incompatible with loaded "
								   "Citus library"),
							FUNC4("Loaded library requires %s, but %s was specified.",
									  CITUS_MAJORVERSION, newExtensionVersion),
							FUNC5("If a newer library is present, restart the database "
									"and try the command again.")));
		}
	}
	else
	{
		/*
		 * No version was specified, so PostgreSQL will use the default_version
		 * from the citus.control file.
		 */
		FUNC0(ERROR);
	}
}