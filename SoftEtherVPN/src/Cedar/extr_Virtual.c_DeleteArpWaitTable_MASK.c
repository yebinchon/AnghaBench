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
struct TYPE_4__ {int /*<<< orphan*/  ArpWaitTable; } ;
typedef  TYPE_1__ VH ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  ARP_WAIT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC3(VH *v, UINT ip)
{
	ARP_WAIT *w;
	// Validate arguments
	if (v == NULL)
	{
		return;
	}

	w = FUNC2(v, ip);
	if (w == NULL)
	{
		return;
	}
	FUNC0(v->ArpWaitTable, w);

	FUNC1(w);
}