#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int cpCRreg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__* __gx ; 
 int* _cpReg ; 
 void* _gxcurrbp ; 

void FUNC7(void *break_pt)
{
	u32 level = 0;
	FUNC1(level);
	FUNC5();
	_cpReg[30] = FUNC3(FUNC0(break_pt),0,16);
	_cpReg[31] = FUNC4(FUNC0(break_pt),16,16);
	__gx->cpCRreg = (__gx->cpCRreg&~0x22)|0x22;
	_cpReg[1] = __gx->cpCRreg;
	_gxcurrbp = break_pt;
	FUNC6();
 	FUNC2(level);
}