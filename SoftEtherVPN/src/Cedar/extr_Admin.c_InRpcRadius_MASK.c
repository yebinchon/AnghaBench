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
struct TYPE_4__ {void* RadiusRetryInterval; int /*<<< orphan*/  RadiusSecret; int /*<<< orphan*/  HubName; void* RadiusPort; int /*<<< orphan*/  RadiusServerName; } ;
typedef  TYPE_1__ RPC_RADIUS ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

void FUNC3(RPC_RADIUS *t, PACK *p)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC2(t, sizeof(RPC_RADIUS));
	FUNC1(p, "RadiusServerName", t->RadiusServerName, sizeof(t->RadiusServerName));
	t->RadiusPort = FUNC0(p, "RadiusPort");
	FUNC1(p, "HubName", t->HubName, sizeof(t->HubName));
	FUNC1(p, "RadiusSecret", t->RadiusSecret, sizeof(t->RadiusSecret));
	t->RadiusRetryInterval = FUNC0(p, "RadiusRetryInterval");
}