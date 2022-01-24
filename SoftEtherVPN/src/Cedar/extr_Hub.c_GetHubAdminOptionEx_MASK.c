#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_8__ {int /*<<< orphan*/  Value; int /*<<< orphan*/  Name; } ;
struct TYPE_7__ {int /*<<< orphan*/  AdminOptionList; } ;
typedef  TYPE_1__ HUB ;
typedef  TYPE_2__ ADMIN_OPTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 

UINT FUNC6(HUB *h, char *name, UINT default_value)
{
	UINT ret = default_value;
	// Validate arguments
	if (h == NULL || name == NULL)
	{
		return 0;
	}

	FUNC0(h->AdminOptionList);
	{
		ADMIN_OPTION *a, t;

		FUNC5(&t, sizeof(t));
		FUNC2(t.Name, sizeof(t.Name), name);
		FUNC3(t.Name);

		a = FUNC1(h->AdminOptionList, &t);

		if (a != NULL)
		{
			ret = a->Value;
		}
	}
	FUNC4(h->AdminOptionList);

	return ret;
}