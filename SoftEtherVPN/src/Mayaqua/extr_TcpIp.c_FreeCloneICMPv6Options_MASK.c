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
struct TYPE_3__ {int /*<<< orphan*/  Mtu; int /*<<< orphan*/  Prefix; int /*<<< orphan*/  TargetLinkLayer; int /*<<< orphan*/  SourceLinkLayer; } ;
typedef  TYPE_1__ ICMPV6_OPTION_LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(ICMPV6_OPTION_LIST *o)
{
	// Validate arguments
	if (o == NULL)
	{
		return;
	}

	FUNC0(o->SourceLinkLayer);
	FUNC0(o->TargetLinkLayer);
	FUNC0(o->Prefix);
	FUNC0(o->Mtu);
}