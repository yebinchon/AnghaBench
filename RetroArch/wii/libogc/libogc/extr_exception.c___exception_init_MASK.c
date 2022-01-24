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
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ EX_DEC ; 
 scalar_t__ EX_FP ; 
 scalar_t__ EX_INT ; 
 int MSR_RI ; 
 scalar_t__ NUM_EXCEPTIONS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dec_exceptionhandler ; 
 int /*<<< orphan*/  default_exceptionhandler ; 
 scalar_t__ exceptionhandler_end ; 
 int /*<<< orphan*/  exceptionhandler_patch ; 
 scalar_t__ exceptionhandler_start ; 
 int /*<<< orphan*/  fpu_exceptionhandler ; 
 int /*<<< orphan*/  irq_exceptionhandler ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4()
{
	s32 i;
	// init all exceptions with the default handler & vector code
	for(i=0;i<NUM_EXCEPTIONS;i++) {
		// load default exception vector handler code
		FUNC0(i,exceptionhandler_start,(exceptionhandler_end-exceptionhandler_start),exceptionhandler_patch);
		//set default exception handler into table
		FUNC1(i,default_exceptionhandler);
	}
	FUNC1(EX_FP,fpu_exceptionhandler);
	FUNC1(EX_INT,irq_exceptionhandler);
	FUNC1(EX_DEC,dec_exceptionhandler);

	FUNC3(FUNC2()|MSR_RI);
}