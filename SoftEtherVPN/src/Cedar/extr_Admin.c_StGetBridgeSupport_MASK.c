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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {int /*<<< orphan*/  IsWinPcapNeeded; int /*<<< orphan*/  IsBridgeSupportedOs; } ;
typedef  TYPE_1__ RPC_BRIDGE_SUPPORT ;
typedef  int /*<<< orphan*/  ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

UINT FUNC3(ADMIN *a, RPC_BRIDGE_SUPPORT *t)
{
	FUNC2(t, sizeof(RPC_BRIDGE_SUPPORT));

	t->IsBridgeSupportedOs = FUNC0();
	t->IsWinPcapNeeded = FUNC1();

	return ERR_NO_ERROR;
}