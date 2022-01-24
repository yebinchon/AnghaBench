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
typedef  int /*<<< orphan*/  UNIX_VLAN ;
typedef  scalar_t__ UINT ;
struct TYPE_4__ {int /*<<< orphan*/ * UnixVLanList; int /*<<< orphan*/ * AccountList; int /*<<< orphan*/  CfgRw; } ;
typedef  TYPE_1__ CLIENT ;
typedef  int /*<<< orphan*/  ACCOUNT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(CLIENT *c)
{
	UINT i;
	// Validate arguments
	if (c == NULL)
	{
		return;
	}

	// Write to the configuration file
	FUNC1(c);

	// Release the configuration file
	FUNC3(c->CfgRw);

	// Release the account list
	for (i = 0;i < FUNC5(c->AccountList);i++)
	{
		ACCOUNT *a = FUNC4(c->AccountList, i);

		FUNC0(a);
	}
	FUNC6(c->AccountList);

	if (c->UnixVLanList != NULL)
	{
		// Release of UNIX version VLAN list
		for (i = 0;i < FUNC5(c->UnixVLanList);i++)
		{
			UNIX_VLAN *v = FUNC4(c->UnixVLanList, i);
			FUNC2(v);
		}
		FUNC6(c->UnixVLanList);
	}
	c->UnixVLanList = NULL;

#ifdef	OS_UNIX
	// Release the VLAN
	UnixVLanFree();
#endif	// OS_UNIX
}