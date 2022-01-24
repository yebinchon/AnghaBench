#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ FOLDER ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(void *p1, void *p2)
{
	FOLDER *f1, *f2;
	if (p1 == NULL || p2 == NULL)
	{
		return 0;
	}
	f1 = *(FOLDER **)p1;
	f2 = *(FOLDER **)p2;
	if (f1 == NULL || f2 == NULL)
	{
		return 0;
	}
	return FUNC0(f1->Name, f2->Name);
}