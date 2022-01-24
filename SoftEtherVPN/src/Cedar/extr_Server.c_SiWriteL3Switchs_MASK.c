#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/  L3SwList; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  Name; } ;
struct TYPE_7__ {TYPE_3__* Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ L3SW ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_3__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(FOLDER *f, SERVER *s)
{
	UINT i;
	FOLDER *folder;
	CEDAR *c;
	// Validate arguments
	if (f == NULL || s == NULL)
	{
		return;
	}
	c = s->Cedar;

	FUNC4(c->L3SwList);
	{
		for (i = 0;i < FUNC2(c->L3SwList);i++)
		{
			L3SW *sw = FUNC1(c->L3SwList, i);

			FUNC3(sw->lock);
			{
				folder = FUNC0(f, sw->Name);

				FUNC5(folder, sw);
			}
			FUNC6(sw->lock);
		}
	}
	FUNC7(c->L3SwList);
}