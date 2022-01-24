#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int Active; void* TableList; void* IfList; int /*<<< orphan*/ * Cedar; int /*<<< orphan*/  ref; int /*<<< orphan*/  lock; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ L3SW ;
typedef  int /*<<< orphan*/  CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  CmpL3If ; 
 int /*<<< orphan*/  CmpL3Table ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 TYPE_1__* FUNC4 (int) ; 

L3SW *FUNC5(CEDAR *c, char *name)
{
	L3SW *o;
	// Validate arguments
	if (c == NULL || name == NULL)
	{
		return NULL;
	}

	o = FUNC4(sizeof(L3SW));

	FUNC3(o->Name, sizeof(o->Name), name);

	o->lock = FUNC1();
	o->ref = FUNC2();
	o->Cedar = c;
	o->Active = false;

	o->IfList = FUNC0(CmpL3If);
	o->TableList = FUNC0(CmpL3Table);

	return o;
}