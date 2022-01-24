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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,void*) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static List *
FUNC4(List *list, uint32 rotateCount)
{
	List *rotatedList = FUNC2(list);

	uint32 rotateIndex = 0;
	for (rotateIndex = 0; rotateIndex < rotateCount; rotateIndex++)
	{
		void *firstElement = FUNC1(rotatedList);

		rotatedList = FUNC3(rotatedList);
		rotatedList = FUNC0(rotatedList, firstElement);
	}

	return rotatedList;
}