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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_8__ {int /*<<< orphan*/  Rpc; } ;
struct TYPE_7__ {int /*<<< orphan*/ * x; } ;
typedef  TYPE_1__ RPC_GET_ISSUER ;
typedef  TYPE_2__ REMOTE_CLIENT ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

UINT FUNC8(REMOTE_CLIENT *r, RPC_GET_ISSUER *a)
{
	PACK *p, *ret;
	UINT err = 0;
	// Validate arguments
	if (r == NULL || a == NULL)
	{
		return ERR_INTERNAL_ERROR;
	}

	p = FUNC3();
	FUNC4(p, a);

	ret = FUNC5(r->Rpc, "GetIssuer", p);

	if (FUNC7(ret))
	{
		if (a->x != NULL)
		{
			FUNC1(a->x);
			a->x = NULL;
		}
		FUNC2(a, ret);
	}
	else
	{
		err = FUNC6(ret);
	}

	FUNC0(ret);

	return err;
}