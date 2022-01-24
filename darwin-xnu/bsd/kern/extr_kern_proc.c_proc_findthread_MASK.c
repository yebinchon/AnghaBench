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
typedef  int /*<<< orphan*/  thread_t ;
struct uthread {int uu_flag; scalar_t__ uu_proc; } ;
typedef  scalar_t__ proc_t ;

/* Variables and functions */
 scalar_t__ PROC_NULL ; 
 int UT_VFORK ; 
 struct uthread* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

proc_t
FUNC5(thread_t thread)
{
	proc_t p = PROC_NULL;
	struct uthread *uth;

	FUNC2();
	uth = FUNC0(thread);
	if (uth && (uth->uu_flag & UT_VFORK))
		p = uth->uu_proc;
	else
		p = (proc_t)(FUNC1(thread));
	p = FUNC4(p);
	FUNC3();
	return(p);
}