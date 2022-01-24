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
struct TYPE_3__ {int /*<<< orphan*/  Cert; int /*<<< orphan*/  Key; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_HUB_GET_CA ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC3(PACK *p, RPC_HUB_GET_CA *t)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC1(p, "HubName", t->HubName);
	FUNC0(p, "Key", t->Key);
	FUNC2(p, "Cert", t->Cert);
}