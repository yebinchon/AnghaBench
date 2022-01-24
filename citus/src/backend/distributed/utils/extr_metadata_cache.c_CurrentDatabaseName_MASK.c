#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int databaseNameValid; char* databaseName; } ;

/* Variables and functions */
 TYPE_1__ MetadataCache ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 

char *
FUNC2(void)
{
	if (!MetadataCache.databaseNameValid)
	{
		char *databaseName = FUNC0(MyDatabaseId);
		if (databaseName == NULL)
		{
			return NULL;
		}

		FUNC1(MetadataCache.databaseName, databaseName, NAMEDATALEN);
		MetadataCache.databaseNameValid = true;
	}

	return MetadataCache.databaseName;
}