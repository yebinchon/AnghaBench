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
struct TYPE_4__ {struct TYPE_4__* Data; int /*<<< orphan*/  Lcp; } ;
typedef  TYPE_1__ PPP_PACKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(PPP_PACKET *pp, bool no_free_struct)
{
	// Validate arguments
	if (pp == NULL)
	{
		return;
	}

	FUNC1(pp->Lcp);

	FUNC0(pp->Data);

	if (no_free_struct == false)
	{
		FUNC0(pp);
	}
}