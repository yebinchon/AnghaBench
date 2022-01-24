#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_6__ {int /*<<< orphan*/  Value; int /*<<< orphan*/  Name; } ;
struct TYPE_5__ {int /*<<< orphan*/  AdminOptionList; } ;
typedef  TYPE_1__ HUB ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_2__ ADMIN_OPTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(FOLDER *f, HUB *h)
{
	// Validate arguments
	if (f == NULL || h == NULL)
	{
		return;
	}

	FUNC3(h->AdminOptionList);
	{
		UINT i;
		for (i = 0;i < FUNC2(h->AdminOptionList);i++)
		{
			ADMIN_OPTION *a = FUNC1(h->AdminOptionList, i);

			FUNC0(f, a->Name, a->Value);
		}
	}
	FUNC4(h->AdminOptionList);
}