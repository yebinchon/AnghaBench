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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  thread_t ;
typedef  int /*<<< orphan*/  proc_t ;

/* Variables and functions */
 int AST_KEVENT_REDRIVE_THREADREQ ; 
 int AST_KEVENT_RETURN_TO_KERNEL ; 
 int /*<<< orphan*/  WORKQ_THREADREQ_CAN_CREATE_THREADS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(thread_t thread, uint16_t bits)
{
	proc_t p = FUNC0();

	if (bits & AST_KEVENT_REDRIVE_THREADREQ) {
		FUNC2(p, WORKQ_THREADREQ_CAN_CREATE_THREADS);
	}
	if (bits & AST_KEVENT_RETURN_TO_KERNEL) {
		FUNC1(p, thread);
	}
}