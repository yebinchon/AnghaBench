#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
typedef  size_t UINT ;
struct TYPE_11__ {int /*<<< orphan*/  Value; int /*<<< orphan*/  Name; } ;
struct TYPE_10__ {int /*<<< orphan*/  AdminOptionList; } ;
typedef  TYPE_1__ HUB ;
typedef  TYPE_2__ ADMIN_OPTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 TYPE_2__* FUNC6 (int) ; 
 TYPE_2__* admin_options ; 
 size_t num_admin_options ; 

void FUNC7(HUB *h, bool lock)
{
	UINT i;
	// Validate arguments
	if (h == NULL)
	{
		return;
	}

	if (lock)
	{
		FUNC1(h->AdminOptionList);
	}

	for (i = 0;i < num_admin_options;i++)
	{
		ADMIN_OPTION *e = &admin_options[i];
		ADMIN_OPTION t, *r;

		FUNC5(&t, sizeof(t));
		FUNC3(t.Name, sizeof(t.Name), e->Name);

		r = FUNC2(h->AdminOptionList, &t);
		if (r == NULL)
		{
			ADMIN_OPTION *a = FUNC6(sizeof(ADMIN_OPTION));

			FUNC3(a->Name, sizeof(a->Name), e->Name);
			a->Value = e->Value;

			FUNC0(h->AdminOptionList, a);
		}
	}

	if (lock)
	{
		FUNC4(h->AdminOptionList);
	}
}