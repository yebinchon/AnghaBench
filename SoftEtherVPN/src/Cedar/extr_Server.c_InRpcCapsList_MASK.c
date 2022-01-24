#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_12__ {int /*<<< orphan*/  CapsList; } ;
struct TYPE_11__ {scalar_t__ type; int num_value; TYPE_1__** values; scalar_t__ name; } ;
struct TYPE_10__ {int /*<<< orphan*/  elements; } ;
struct TYPE_9__ {int /*<<< orphan*/  IntValue; } ;
typedef  TYPE_2__ PACK ;
typedef  TYPE_3__ ELEMENT ;
typedef  TYPE_4__ CAPSLIST ;
typedef  int /*<<< orphan*/  CAPS ;

/* Variables and functions */
 int /*<<< orphan*/  CompareCaps ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,char*) ; 
 scalar_t__ VALUE_INT ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 

void FUNC7(CAPSLIST *t, PACK *p)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC6(t, sizeof(CAPSLIST));
	t->CapsList = FUNC4(CompareCaps);

	for (i = 0;i < FUNC2(p->elements);i++)
	{
		ELEMENT *e = FUNC1(p->elements, i);

		if (FUNC5(e->name, "caps_") && e->type == VALUE_INT && e->num_value == 1)
		{
			CAPS *c = FUNC3(e->name + 5, e->values[0]->IntValue);
			FUNC0(t->CapsList, c);
		}
	}
}