#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  DeferredErrorMessage ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 () ; 

__attribute__((used)) static DeferredErrorMessage *
FUNC7(Oid relationId)
{
	if (FUNC2(relationId) && !FUNC3(relationId))
	{
		Oid parentOid = FUNC1(relationId);
		char *parentRelationTest = FUNC5(parentOid);
		StringInfo errorHint = FUNC6();

		FUNC4(errorHint, "Run the query on the parent table "
									"\"%s\" instead.", parentRelationTest);

		return FUNC0(ERRCODE_FEATURE_NOT_SUPPORTED,
							 "modifications on partitions when replication "
							 "factor is greater than 1 is not supported",
							 NULL, errorHint->data);
	}

	return NULL;
}