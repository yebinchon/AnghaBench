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
struct TYPE_2__ {scalar_t__ workerHashFunctionId; } ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*,int const) ; 
 scalar_t__ InvalidOid ; 
 TYPE_1__ MetadataCache ; 
 scalar_t__ FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 char* FUNC3 (scalar_t__) ; 

Oid
FUNC4(void)
{
	if (MetadataCache.workerHashFunctionId == InvalidOid)
	{
		Oid citusExtensionOid = FUNC1("citus", false);
		Oid citusSchemaOid = FUNC2(citusExtensionOid);
		char *citusSchemaName = FUNC3(citusSchemaOid);
		const int argCount = 1;

		MetadataCache.workerHashFunctionId =
			FUNC0(citusSchemaName, "worker_hash", argCount);
	}

	return MetadataCache.workerHashFunctionId;
}