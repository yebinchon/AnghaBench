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
struct TYPE_4__ {int /*<<< orphan*/ * maskp; int /*<<< orphan*/  arg1; int /*<<< orphan*/  arg0; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ mp_call_t ;
typedef  int /*<<< orphan*/  mp_call_queue_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRACE_MP_CPUS_CALL_ACTION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 size_t FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mp_cpus_call_head ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(void)
{
	mp_call_queue_t	*cqp;
	boolean_t	intrs_enabled;
	mp_call_t	*callp;
	mp_call_t	call;

	FUNC4(!FUNC7());
	cqp = &mp_cpus_call_head[FUNC5()];
	intrs_enabled = FUNC10(cqp);
	while ((callp = FUNC8(cqp)) != NULL) {
		/* Copy call request to the stack to free buffer */
		call = *callp;
		FUNC9(callp);
		if (call.func != NULL) {
			FUNC11(cqp, intrs_enabled);
			FUNC0(
				TRACE_MP_CPUS_CALL_ACTION,
				FUNC2(call.func), FUNC3(call.arg0),
				FUNC3(call.arg1), FUNC1(call.maskp), 0);
			call.func(call.arg0, call.arg1);
			(void) FUNC10(cqp);
		}
		if (call.maskp != NULL)
			FUNC6(FUNC5(), call.maskp);
	}
	FUNC11(cqp, intrs_enabled);
}