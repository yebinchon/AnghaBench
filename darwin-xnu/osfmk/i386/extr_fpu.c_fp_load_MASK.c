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
typedef  int /*<<< orphan*/  thread_t ;
struct x86_fx_thread_state {scalar_t__ fp_valid; int /*<<< orphan*/  fp_save_layout; } ;
typedef  TYPE_1__* pcb_t ;
struct TYPE_3__ {struct x86_fx_thread_state* ifps; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct x86_fx_thread_state*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct x86_fx_thread_state*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC5(
	thread_t	thr_act)
{
	pcb_t pcb = FUNC0(thr_act);
	struct x86_fx_thread_state *ifps = pcb->ifps;

	FUNC1(ifps);
#if	DEBUG
	if (ifps->fp_valid != FALSE && ifps->fp_valid != TRUE) {
		panic("fp_load() invalid fp_valid: %u, fp_save_layout: %u\n",
		      ifps->fp_valid, ifps->fp_save_layout);
	}
#endif

	if (ifps->fp_valid == FALSE) {
		FUNC2();
	} else {
		FUNC3(ifps);
	}
	ifps->fp_valid = FALSE;		/* in FPU */
}