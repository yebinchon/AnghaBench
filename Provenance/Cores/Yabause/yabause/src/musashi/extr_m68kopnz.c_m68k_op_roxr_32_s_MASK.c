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
typedef  int uint64 ;
typedef  int uint ;

/* Variables and functions */
 int DY ; 
 int FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 int FLAG_X ; 
 int FLAG_Z ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int REG_IR ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  VFLAG_CLEAR ; 
 int FUNC4 () ; 

void FUNC5(void)
{
#if M68K_USE_64_BIT

	uint*  r_dst = &DY;
	uint   shift = (((REG_IR >> 9) - 1) & 7) + 1;
	uint64 src   = *r_dst;
	uint64 res   = src | (((uint64)XFLAG_AS_1()) << 32);

	res = ROR_33_64(res, shift);

	FLAG_C = FLAG_X = res >> 24;
	res = MASK_OUT_ABOVE_32(res);

	*r_dst =  res;

	FLAG_N = NFLAG_32(res);
	FLAG_Z = res;
	FLAG_V = VFLAG_CLEAR;

#else

	uint* r_dst = &DY;
	uint shift = (((REG_IR >> 9) - 1) & 7) + 1;
	uint src = *r_dst;
	uint res = FUNC0((FUNC2(src, shift) & ~(1 << (32 - shift))) | (FUNC4() << (32 - shift)));
	uint new_x_flag = src & (1 << (shift - 1));

	*r_dst = res;

	FLAG_C = FLAG_X = (new_x_flag != 0)<<8;
	FLAG_N = FUNC1(res);
	FLAG_Z = res;
	FLAG_V = VFLAG_CLEAR;

#endif
}