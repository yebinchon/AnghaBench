#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  dependencyList; int /*<<< orphan*/  dependencySet; } ;
typedef  TYPE_1__ ObjectAddressCollector ;
typedef  int /*<<< orphan*/  ObjectAddress ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_ENTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(ObjectAddressCollector *collector, const ObjectAddress *collect)
{
	ObjectAddress *address = NULL;
	bool found = false;

	/* add to set */
	address = (ObjectAddress *) FUNC0(collector->dependencySet, collect,
											HASH_ENTER, &found);

	if (!found)
	{
		/* copy object address in */
		*address = *collect;
	}

	/* add to list*/
	collector->dependencyList = FUNC1(collector->dependencyList, address);
}