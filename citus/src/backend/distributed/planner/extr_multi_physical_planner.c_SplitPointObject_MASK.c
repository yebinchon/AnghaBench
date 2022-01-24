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
typedef  int uint32 ;
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_3__ {int /*<<< orphan*/  valueTypeId; int /*<<< orphan*/  minValueExists; int /*<<< orphan*/  minValue; } ;
typedef  TYPE_1__ ShardInterval ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 

__attribute__((used)) static ArrayType *
FUNC4(ShardInterval **shardIntervalArray, uint32 shardIntervalCount)
{
	ArrayType *splitPointObject = NULL;
	uint32 intervalIndex = 0;
	Oid typeId = InvalidOid;
	bool typeByValue = false;
	char typeAlignment = 0;
	int16 typeLength = 0;

	/* allocate an array for shard min values */
	uint32 minDatumCount = shardIntervalCount;
	Datum *minDatumArray = FUNC3(minDatumCount * sizeof(Datum));

	for (intervalIndex = 0; intervalIndex < shardIntervalCount; intervalIndex++)
	{
		ShardInterval *shardInterval = shardIntervalArray[intervalIndex];
		minDatumArray[intervalIndex] = shardInterval->minValue;
		FUNC0(shardInterval->minValueExists);

		/* resolve the datum type on the first pass */
		if (intervalIndex == 0)
		{
			typeId = shardInterval->valueTypeId;
		}
	}

	/* construct the split point object from the sorted array */
	FUNC2(typeId, &typeLength, &typeByValue, &typeAlignment);
	splitPointObject = FUNC1(minDatumArray, minDatumCount, typeId,
									   typeLength, typeByValue, typeAlignment);

	return splitPointObject;
}