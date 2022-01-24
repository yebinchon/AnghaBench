#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_3__ {int /*<<< orphan*/  AdminOptionList; } ;
typedef  TYPE_1__ HUB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(HUB *h, bool lock)
{
	UINT i;
	// Validate arguments
	if (h == NULL)
	{
		return;
	}

	if (lock)
	{
		FUNC4(h->AdminOptionList);
	}

	for (i = 0;i < FUNC3(h->AdminOptionList);i++)
	{
		FUNC1(FUNC2(h->AdminOptionList, i));
	}

	FUNC0(h->AdminOptionList);

	if (lock)
	{
		FUNC5(h->AdminOptionList);
	}
}