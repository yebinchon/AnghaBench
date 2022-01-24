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
typedef  int /*<<< orphan*/  boolean_t ;
typedef  scalar_t__ IOInterruptHandler ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (void*,int,void*,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kPEAcquireScreen ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(
	void *nub,
	int source,
	void *target,
	IOInterruptHandler handler,
	void *refCon)  
{
	boolean_t current_state;

	current_state = FUNC2(FALSE);

	FUNC0(nub, source, target,
	                             (IOInterruptHandler) handler, refCon);

	(void) FUNC2(current_state);

	FUNC1(NULL, kPEAcquireScreen);
}