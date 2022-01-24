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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  NATIVE_NAT_ENTRY ;
typedef  int /*<<< orphan*/  NATIVE_NAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(NATIVE_NAT *t, UINT ip, UINT protocol)
{
	NATIVE_NAT_ENTRY *e;
	// Validate arguments
	if (t == NULL)
	{
		return;
	}

	e = FUNC1(t, ip, protocol);

	if (e != NULL)
	{
		FUNC0(t, e);
	}
}