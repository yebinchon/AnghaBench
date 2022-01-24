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
struct TYPE_4__ {int /*<<< orphan*/  Ref; } ;
typedef  TYPE_1__ TUBEPAIR_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(TUBEPAIR_DATA *d)
{
	// Validate arguments
	if (d == NULL)
	{
		return;
	}

	if (FUNC1(d->Ref) == 0)
	{
		FUNC0(d);
	}
}