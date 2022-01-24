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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Oid
FUNC4(Oid typeId, Oid accessMethodId, int16 strategyNumber)
{
	/* Get default operator class from pg_opclass */
	Oid operatorClassId = FUNC0(typeId, accessMethodId);

	Oid operatorFamily = FUNC1(operatorClassId);
	Oid operatorClassInputType = FUNC2(operatorClassId);

	/* Lookup for the operator with the desired input type in the family */
	Oid operatorId = FUNC3(operatorFamily, operatorClassInputType,
										 operatorClassInputType, strategyNumber);
	return operatorId;
}