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

/* Variables and functions */
 scalar_t__ EXCEPTION_TRAP_BASE ; 
 int REG_IR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

void FUNC1(void)
{
	/* Trap#n stacks exception frame type 0 */
	FUNC0(EXCEPTION_TRAP_BASE + (REG_IR & 0xf));	/* HJB 990403 */
}