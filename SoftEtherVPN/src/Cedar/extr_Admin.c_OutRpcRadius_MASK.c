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
struct TYPE_3__ {int /*<<< orphan*/  RadiusRetryInterval; int /*<<< orphan*/  RadiusSecret; int /*<<< orphan*/  HubName; int /*<<< orphan*/  RadiusPort; int /*<<< orphan*/  RadiusServerName; } ;
typedef  TYPE_1__ RPC_RADIUS ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC2(PACK *p, RPC_RADIUS *t)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC1(p, "RadiusServerName", t->RadiusServerName);
	FUNC0(p, "RadiusPort", t->RadiusPort);
	FUNC1(p, "HubName", t->HubName);
	FUNC1(p, "RadiusSecret", t->RadiusSecret);
	FUNC0(p, "RadiusRetryInterval", t->RadiusRetryInterval);
}