#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  EntryName; } ;
typedef  TYPE_1__ WPC_ENTRY ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int WPC_DATA_ENTRY_SIZE ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

WPC_ENTRY *FUNC4(LIST *o, char *name)
{
	UINT i;
	char name_str[WPC_DATA_ENTRY_SIZE];
	// Validate arguments
	if (o == NULL || name == NULL)
	{
		return NULL;
	}

	FUNC3(name_str, name);

	for (i = 0;i < FUNC2(o);i++)
	{
		WPC_ENTRY *e = FUNC1(o, i);

		if (FUNC0(e->EntryName, name_str, WPC_DATA_ENTRY_SIZE) == 0)
		{
			return e;
		}
	}

	return NULL;
}