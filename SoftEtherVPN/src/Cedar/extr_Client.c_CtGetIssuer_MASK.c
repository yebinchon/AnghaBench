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
typedef  int /*<<< orphan*/  X ;
struct TYPE_9__ {TYPE_1__* Cedar; } ;
struct TYPE_8__ {int /*<<< orphan*/ * x; int /*<<< orphan*/ * issuer_x; } ;
struct TYPE_7__ {int /*<<< orphan*/  CaList; } ;
typedef  TYPE_2__ RPC_GET_ISSUER ;
typedef  TYPE_3__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_OBJECT_NOT_FOUND ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(CLIENT *c, RPC_GET_ISSUER *a)
{
	X *x;
	// Validate arguments
	if (c == NULL || a == NULL)
	{
		return false;
	}

	x = FUNC1(c->Cedar->CaList, a->x);
	if (x == NULL)
	{
		FUNC0(c, ERR_OBJECT_NOT_FOUND);;
		return false;
	}
	else
	{
		a->issuer_x = x;
		if (a->x != NULL)
		{
			FUNC2(a->x);
			a->x = NULL;
		}
		return true;
	}
}