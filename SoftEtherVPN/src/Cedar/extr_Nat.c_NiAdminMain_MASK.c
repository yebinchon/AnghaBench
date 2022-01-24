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
typedef  int /*<<< orphan*/  SOCK ;
typedef  int /*<<< orphan*/  RPC ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  NAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  NiRpcServer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(NAT *n, SOCK *s)
{
	RPC *r;
	PACK *p;
	// Validate arguments
	if (n == NULL || s == NULL)
	{
		return;
	}

	p = FUNC2();
	FUNC1(s, p);
	FUNC0(p);

	r = FUNC5(s, NiRpcServer, n);

	FUNC4(r);

	FUNC3(r);
}