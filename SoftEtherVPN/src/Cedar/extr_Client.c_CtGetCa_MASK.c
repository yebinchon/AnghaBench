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
typedef  scalar_t__ UINT ;
struct TYPE_9__ {TYPE_1__* Cedar; } ;
struct TYPE_8__ {scalar_t__ Key; int /*<<< orphan*/ * x; } ;
struct TYPE_7__ {int /*<<< orphan*/  CaList; } ;
typedef  TYPE_2__ RPC_GET_CA ;
typedef  TYPE_3__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_OBJECT_NOT_FOUND ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

bool FUNC7(CLIENT *c, RPC_GET_CA *get)
{
	bool ret = true;
	X *cert = NULL;
	// Validate arguments
	if (c == NULL || get == NULL)
	{
		return false;
	}

	FUNC4(c->Cedar->CaList);
	{
		UINT i;

		for (i = 0;i < FUNC3(c->Cedar->CaList);i++)
		{
			X *x = FUNC2(c->Cedar->CaList, i);

			if (FUNC5(x) == get->Key)
			{
				cert = FUNC1(x);
				break;
			}
		}
	}
	FUNC6(c->Cedar->CaList);

	if (cert == NULL)
	{
		// Certificate does not exist
		ret = false;
		FUNC0(c, ERR_OBJECT_NOT_FOUND);
	}
	else
	{
		ret = true;
		get->x = cert;
	}

	return ret;
}