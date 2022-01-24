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
struct TYPE_2__ {scalar_t__ textCopyFormatId; } ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ FUNC1 (scalar_t__,char*) ; 
 TYPE_1__ MetadataCache ; 

Oid
FUNC2(void)
{
	if (MetadataCache.textCopyFormatId == InvalidOid)
	{
		Oid copyFormatTypeId = FUNC0();
		MetadataCache.textCopyFormatId = FUNC1(copyFormatTypeId, "text");
	}

	return MetadataCache.textCopyFormatId;
}