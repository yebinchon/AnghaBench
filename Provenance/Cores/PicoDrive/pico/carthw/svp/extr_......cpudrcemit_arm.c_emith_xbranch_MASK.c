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

/* Variables and functions */
 int EL_ANOMALY ; 
 int EL_STATUS ; 
 int EL_SVP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int) ; 
 scalar_t__ tcache_ptr ; 

__attribute__((used)) static int FUNC8(int cond, void *target, int is_call)
{
	int val = (u32 *)target - (u32 *)tcache_ptr - 2;
	int direct = FUNC7(val);
	u32 *start_ptr = (u32 *)tcache_ptr;

	if (direct)
	{
		FUNC3(cond,is_call,val & 0xffffff);		// b, bl target
	}
	else
	{
#ifdef __EPOC32__
//		elprintf(EL_SVP, "emitting indirect jmp %08x->%08x", tcache_ptr, target);
		if (is_call)
			EOP_ADD_IMM(14,15,0,8);			// add lr,pc,#8
		EOP_C_AM2_IMM(cond,1,0,1,15,15,0);		// ldrcc pc,[pc]
		EOP_MOV_REG_SIMPLE(15,15);			// mov pc, pc
		EMIT((u32)target);
#else
		// should never happen
		FUNC5(EL_STATUS|EL_SVP|EL_ANOMALY, "indirect jmp %08x->%08x", target, tcache_ptr);
		FUNC6(1);
#endif
	}

	return (u32 *)tcache_ptr - start_ptr;
}