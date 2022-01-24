#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct ifnet {int dummy; } ;
struct dlil_threading_info {scalar_t__ input_thr; int input_waiting; int /*<<< orphan*/  input_lck; struct ifnet* ifp; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int DLIL_INPUT_TERMINATE ; 
 int DLIL_INPUT_TERMINATE_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  cur_dlil_input_threads ; 
 scalar_t__ FUNC2 () ; 
 struct dlil_threading_info* dlil_main_input_thread ; 
 scalar_t__ dlil_verbose ; 
 int if_input_thread_termination_spin ; 
 char* FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct dlil_threading_info *inp)
{
	struct ifnet *ifp = inp->ifp;

	FUNC1(FUNC2() == inp->input_thr);
	FUNC1(inp != dlil_main_input_thread);

	FUNC0(-1, &cur_dlil_input_threads);

#if TEST_INPUT_THREAD_TERMINATION
	{ /* do something useless that won't get optimized away */
		uint32_t	v = 1;
		for (uint32_t i = 0;
		     i < if_input_thread_termination_spin;
		     i++) {
			v = (i + 1) * v;
		}
		printf("the value is %d\n", v);
	}
#endif /* TEST_INPUT_THREAD_TERMINATION */

	FUNC4(&inp->input_lck);
	FUNC1((inp->input_waiting & DLIL_INPUT_TERMINATE) != 0);
	inp->input_waiting |= DLIL_INPUT_TERMINATE_COMPLETE;
	FUNC9((caddr_t)&inp->input_waiting);
	FUNC5(&inp->input_lck);

	/* for the extra refcnt from kernel_thread_start() */
	FUNC7(FUNC2());

	if (dlil_verbose) {
		FUNC6("%s: input thread terminated\n",
		    FUNC3(ifp));
	}

	/* this is the end */
	FUNC8(FUNC2());
	/* NOTREACHED */
}