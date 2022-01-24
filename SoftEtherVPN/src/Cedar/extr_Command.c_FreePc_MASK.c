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
struct TYPE_4__ {struct TYPE_4__* CmdLine; struct TYPE_4__* ServerName; } ;
typedef  TYPE_1__ PC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(PC *pc)
{
	// Validate arguments
	if (pc == NULL)
	{
		return;
	}

	FUNC0(pc->ServerName);
	FUNC0(pc->CmdLine);
	FUNC0(pc);
}