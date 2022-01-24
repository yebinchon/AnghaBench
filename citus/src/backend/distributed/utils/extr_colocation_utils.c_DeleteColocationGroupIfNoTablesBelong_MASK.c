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
typedef  scalar_t__ uint32 ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ INVALID_COLOCATION_ID ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(uint32 colocationId)
{
	if (colocationId != INVALID_COLOCATION_ID)
	{
		List *colocatedTableList = FUNC0(colocationId);
		int colocatedTableCount = FUNC2(colocatedTableList);

		if (colocatedTableCount == 0)
		{
			FUNC1(colocationId);
		}
	}
}