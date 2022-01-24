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

/* Variables and functions */
 char DISTRIBUTE_BY_HASH ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char) ; 

void
FUNC4(Oid distributedTableId)
{
	char partitionType = FUNC0(distributedTableId);
	if (partitionType != DISTRIBUTE_BY_HASH)
	{
		FUNC1(ERROR, (FUNC2(ERRCODE_FEATURE_NOT_SUPPORTED),
						FUNC3("unsupported table partition type: %c", partitionType)));
	}
}