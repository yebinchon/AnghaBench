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
typedef  scalar_t__ Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FirstNormalObjectId ; 
 char TYPCATEGORY_ARRAY ; 
 char TYPCATEGORY_COMPOSITE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,int*) ; 

bool
FUNC2(Oid typeId)
{
	if (!FUNC0(typeId))
	{
		return false;
	}

	if (typeId >= FirstNormalObjectId)
	{
		char typeCategory = '\0';
		bool typePreferred = false;

		FUNC1(typeId, &typeCategory, &typePreferred);
		if (typeCategory == TYPCATEGORY_ARRAY ||
			typeCategory == TYPCATEGORY_COMPOSITE)
		{
			return false;
		}
	}

	return true;
}