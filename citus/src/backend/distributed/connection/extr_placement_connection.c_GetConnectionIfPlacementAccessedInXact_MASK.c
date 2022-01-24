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
typedef  int /*<<< orphan*/  MultiConnection ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 char* FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

MultiConnection *
FUNC3(int flags, List *placementAccessList,
									   const char *userName)
{
	MultiConnection *connection = NULL;
	char *freeUserName = NULL;

	if (userName == NULL)
	{
		userName = freeUserName = FUNC0();
	}

	connection = FUNC1(flags, placementAccessList,
											 userName);

	if (freeUserName != NULL)
	{
		FUNC2(freeUserName);
	}

	return connection;
}