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
typedef  int /*<<< orphan*/  int16 ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,char*) ; 

ArrayType *
FUNC2(Datum *datumArray, int datumCount, Oid datumTypeId)
{
	ArrayType *arrayObject = NULL;
	int16 typeLength = 0;
	bool typeByValue = false;
	char typeAlignment = 0;

	FUNC1(datumTypeId, &typeLength, &typeByValue, &typeAlignment);
	arrayObject = FUNC0(datumArray, datumCount, datumTypeId,
								  typeLength, typeByValue, typeAlignment);

	return arrayObject;
}