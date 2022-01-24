#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  x86_saved_state_t ;
struct TYPE_6__ {int cs; int /*<<< orphan*/  rip; } ;
struct TYPE_7__ {TYPE_1__ isf; } ;
typedef  TYPE_2__ x86_saved_state64_t ;
struct TYPE_8__ {int cs; int /*<<< orphan*/  eip; } ;
typedef  TYPE_3__ x86_saved_state32_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC7(
	x86_saved_state_t	*tregs)
{
        uint64_t	rip;
	boolean_t	user_mode = FALSE;

	FUNC0(FUNC1() > 0);
	FUNC0(!FUNC3());

	if (FUNC2(tregs) == TRUE) {
	        x86_saved_state64_t	*regs;
		  
		regs = FUNC5(tregs);

		if (regs->isf.cs & 0x03)
			user_mode = TRUE;
		rip = regs->isf.rip;
	} else {
	        x86_saved_state32_t	*regs;

		regs = FUNC4(tregs);

		if (regs->cs & 0x03)
		        user_mode = TRUE;
		rip = regs->eip;
	}

	/* call the generic etimer */
	FUNC6(user_mode, rip);
}