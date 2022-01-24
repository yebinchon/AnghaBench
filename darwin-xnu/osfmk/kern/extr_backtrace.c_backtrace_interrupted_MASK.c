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
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (uintptr_t*,int,void*) ; 
 scalar_t__ FUNC2 (uintptr_t*,uintptr_t*) ; 
 scalar_t__ FUNC3 () ; 

uint32_t
FUNC4(uintptr_t *bt, uint32_t max_frames)
{
	uintptr_t pc;
	uintptr_t fp;
	kern_return_t kr;

	FUNC0(bt != NULL);
	FUNC0(max_frames > 0);
	FUNC0(FUNC3() == TRUE);

	kr = FUNC2(&pc, &fp);
	if (kr != KERN_SUCCESS) {
		return 0;
	}

	bt[0] = pc;
	if (max_frames == 1) {
		return 1;
	}

	return FUNC1(bt + 1, max_frames - 1, (void *)fp) + 1;
}