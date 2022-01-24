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
struct TYPE_2__ {scalar_t__ extraDataContainerFuncId; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 scalar_t__ INTERNALOID ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,scalar_t__*,int) ; 
 TYPE_1__ MetadataCache ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

Oid
FUNC3(void)
{
	List *nameList = NIL;
	Oid paramOids[1] = { INTERNALOID };

	if (MetadataCache.extraDataContainerFuncId == InvalidOid)
	{
		nameList = FUNC1(FUNC2("pg_catalog"),
							  FUNC2("citus_extradata_container"));
		MetadataCache.extraDataContainerFuncId =
			FUNC0(nameList, 1, paramOids, false);
	}

	return MetadataCache.extraDataContainerFuncId;
}