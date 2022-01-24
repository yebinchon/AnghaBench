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
struct TYPE_6__ {int rsp; } ;
struct TYPE_7__ {TYPE_1__ isf; } ;
typedef  TYPE_2__ x86_saved_state64_t ;
struct TYPE_8__ {int uesp; } ;
typedef  TYPE_3__ x86_saved_state32_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  thread_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DIRTY ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

uint64_t
FUNC5(
	thread_t	thread,
	int		adjust)
{
	FUNC3(thread, DIRTY);
	if (FUNC4(thread)) {
		x86_saved_state64_t	*iss64;

		iss64 = FUNC2(thread);

		iss64->isf.rsp += adjust;

		return iss64->isf.rsp;
	} else {
		x86_saved_state32_t	*iss32;

		iss32 = FUNC1(thread);

		iss32->uesp += adjust;

		return FUNC0(iss32->uesp);
	}
}