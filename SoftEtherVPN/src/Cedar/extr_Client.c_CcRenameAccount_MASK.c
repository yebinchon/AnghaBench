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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int /*<<< orphan*/  Rpc; } ;
typedef  int /*<<< orphan*/  RPC_RENAME_ACCOUNT ;
typedef  TYPE_1__ REMOTE_CLIENT ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

UINT FUNC6(REMOTE_CLIENT *r, RPC_RENAME_ACCOUNT *rename)
{
	PACK *p, *ret;
	UINT err = 0;
	// Validate arguments
	if (r == NULL || rename == NULL)
	{
		return ERR_INTERNAL_ERROR;
	}

	p = FUNC1();
	FUNC2(p, rename);

	ret = FUNC3(r->Rpc, "RenameAccount", p);

	if (FUNC5(ret) == false)
	{
		err = FUNC4(ret);
	}

	FUNC0(ret);

	return err;
}