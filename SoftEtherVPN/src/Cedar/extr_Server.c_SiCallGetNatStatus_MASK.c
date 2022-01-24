#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SERVER ;
typedef  int /*<<< orphan*/  RPC_NAT_STATUS ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  FARM_MEMBER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

void FUNC6(SERVER *s, FARM_MEMBER *f, char *hubname, RPC_NAT_STATUS *t)
{
	PACK *p;
	// Validate arguments
	if (s == NULL || f == NULL || hubname == NULL || t == NULL)
	{
		return;
	}

	p = FUNC2();
	FUNC3(p, "HubName", hubname);

	p = FUNC4(f, p, "getnatstatus");

	FUNC5(t, sizeof(RPC_NAT_STATUS));
	FUNC1(t, p);

	FUNC0(p);
}