#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * EnablePtr; } ;
struct TYPE_4__ {TYPE_3__* DynListenerIcmp; int /*<<< orphan*/  EnableVpnOverIcmp; TYPE_3__* DynListenerDns; int /*<<< orphan*/  EnableVpnOverDns; } ;
typedef  TYPE_1__ SERVER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 

void FUNC1(SERVER *s)
{
	// Validate arguments
	if (s == NULL)
	{
		return;
	}

	if (s->DynListenerDns != NULL)
	{
		*s->DynListenerDns->EnablePtr = s->EnableVpnOverDns;
		FUNC0(s->DynListenerDns);
	}

	if (s->DynListenerIcmp != NULL)
	{
		*s->DynListenerIcmp->EnablePtr = s->EnableVpnOverIcmp;
		FUNC0(s->DynListenerIcmp);
	}
}