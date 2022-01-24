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
struct TYPE_2__ {scalar_t__ anyValueFunctionId; } ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*,int const) ; 
 scalar_t__ InvalidOid ; 
 TYPE_1__ MetadataCache ; 

Oid
FUNC1(void)
{
	if (MetadataCache.anyValueFunctionId == InvalidOid)
	{
		const int argCount = 1;
		MetadataCache.anyValueFunctionId =
			FUNC0("pg_catalog", "any_value", argCount);
	}

	return MetadataCache.anyValueFunctionId;
}