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
typedef  int /*<<< orphan*/  Oid ;
typedef  scalar_t__ AclResult ;
typedef  int /*<<< orphan*/  AclMode ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  OBJECT_TABLE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(Oid relationId, AclMode mode)
{
	AclResult aclresult;

	aclresult = FUNC3(relationId, FUNC0(), mode);

	if (aclresult != ACLCHECK_OK)
	{
		FUNC1(aclresult, OBJECT_TABLE, FUNC2(relationId));
	}
}