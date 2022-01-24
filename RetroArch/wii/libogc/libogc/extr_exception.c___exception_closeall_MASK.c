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
 int MSR_EE ; 
 int MSR_FP ; 
 int MSR_RI ; 
 scalar_t__ NUM_EXCEPTIONS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3()
{
	s32 i;

	FUNC2(FUNC1()&~MSR_EE);
	FUNC2(FUNC1()|(MSR_FP|MSR_RI));

	for(i=0;i<NUM_EXCEPTIONS;i++) {
		FUNC0(i);
	}
}