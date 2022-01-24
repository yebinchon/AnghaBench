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
typedef  int /*<<< orphan*/  wait_interrupt_t ;
typedef  int /*<<< orphan*/  mach_exception_data_type_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  exception_type_t ;

/* Variables and functions */
 int EXCEPTION_CODE_MAX ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

kern_return_t FUNC2(exception_type_t exception,
	mach_exception_data_type_t exccode, mach_exception_data_type_t excsubcode)
{
	mach_exception_data_type_t	code[EXCEPTION_CODE_MAX];
	wait_interrupt_t		wsave;
	kern_return_t kr = KERN_SUCCESS;

	code[0] = exccode;
	code[1] = excsubcode;

	wsave = FUNC1(THREAD_UNINT);
	kr = FUNC0(exception, code, EXCEPTION_CODE_MAX);
	(void) FUNC1(wsave);
	return kr;
}