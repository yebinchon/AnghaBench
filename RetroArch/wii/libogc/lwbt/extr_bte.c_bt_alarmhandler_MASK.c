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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  syswd_t ;

/* Variables and functions */
 size_t STACKSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ l2cap_tmr ; 
 int /*<<< orphan*/ * ppc_stack ; 

__attribute__((used)) static void FUNC3(syswd_t alarm,void *cbarg)
{
	FUNC1();
	FUNC0(0,0,0,0,(u32)l2cap_tmr,(u32)(&ppc_stack[STACKSIZE]));
	FUNC2();
}