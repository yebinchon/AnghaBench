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
typedef  int /*<<< orphan*/  RPC_CLIENT_CREATE_VLAN ;
typedef  TYPE_1__ REMOTE_CLIENT ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

UINT FUNC8(REMOTE_CLIENT *r, RPC_CLIENT_CREATE_VLAN *create)
{
	PACK *ret, *p;
	UINT err = 0;
	char *s = NULL;
	// Validate arguments
	if (r == NULL || create == NULL)
	{
		return ERR_INTERNAL_ERROR;
	}

	p = FUNC3();
	FUNC4(p, create);

#ifdef	OS_WIN32
	s = MsNoWarningSoundInit();
#endif	// OS_WIN32

	ret = FUNC5(r->Rpc, "CreateVLan", p);

#ifdef	OS_WIN32
	MsNoWarningSoundFree(s);
#endif	// OS_WIN32

	if (FUNC7(ret) == false)
	{
		err = FUNC6(ret);
	}

	FUNC0(ret);

	return err;
}