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
struct TYPE_3__ {int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/ * HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

bool
FUNC5(const ObjectAddress *address)
{
	if (address == NULL)
	{
		return false;
	}

	if (FUNC4(address->classId))
	{
		HeapTuple objtup;
		Relation catalog = FUNC3(address->classId, AccessShareLock);

#if PG_VERSION_NUM >= 120000
		objtup = get_catalog_object_by_oid(catalog, get_object_attnum_oid(
											   address->classId), address->objectId);
#else
		objtup = FUNC0(catalog, address->objectId);
#endif
		FUNC2(catalog, AccessShareLock);
		if (objtup != NULL)
		{
			return true;
		}

		return false;
	}

	return false;
}