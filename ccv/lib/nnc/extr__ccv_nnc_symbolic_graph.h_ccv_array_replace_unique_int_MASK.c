#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int rnum; } ;
typedef  TYPE_1__ ccv_array_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int const*) ; 

__attribute__((used)) inline static void FUNC2(ccv_array_t* ints, const int idx, const int outgoing)
{
	int i;
	int flag = 0;
	for (i = 0; i < ints->rnum;)
	{
		if (*(int*)FUNC0(ints, i) == idx)
		{
			if (flag)
			{
				if (i < ints->rnum - 1)
					*(int*)FUNC0(ints, i) = *(int*)FUNC0(ints, ints->rnum - 1);
				--ints->rnum;
				continue;
			}
			*(int*)FUNC0(ints, i) = outgoing;
			flag = 1;
		} else if (*(int*)FUNC0(ints, i) == outgoing) {
			// Remove this from the list.
			if (flag)
			{
				if (i < ints->rnum - 1)
					*(int*)FUNC0(ints, i) = *(int*)FUNC0(ints, ints->rnum - 1);
				--ints->rnum;
				continue;
			}
			flag = 1;
		}
		++i;
	}
	if (!flag)
		FUNC1(ints, &outgoing);
}