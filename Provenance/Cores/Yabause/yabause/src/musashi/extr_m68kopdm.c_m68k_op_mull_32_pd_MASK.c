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
typedef  scalar_t__ sint64 ;
typedef  scalar_t__ sint32 ;
typedef  int sint ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  CFLAG_CLEAR ; 
 int /*<<< orphan*/  CPU_TYPE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int FLAG_V ; 
 int FLAG_Z ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 () ; 
 int FUNC9 () ; 
 int* REG_D ; 
 int VFLAG_CLEAR ; 
 int /*<<< orphan*/  FUNC10 () ; 

void FUNC11(void)
{
#if M68K_USE_64_BIT

	if(CPU_TYPE_IS_EC020_PLUS(CPU_TYPE))
	{
		uint word2 = OPER_I_16();
		uint64 src = OPER_AY_PD_32();
		uint64 dst = REG_D[(word2 >> 12) & 7];
		uint64 res;

		FLAG_C = CFLAG_CLEAR;

		if(BIT_B(word2))			   /* signed */
		{
			res = (sint64)((sint32)src) * (sint64)((sint32)dst);
			if(!BIT_A(word2))
			{
				FLAG_Z = MASK_OUT_ABOVE_32(res);
				FLAG_N = NFLAG_32(res);
				FLAG_V = ((sint64)res != (sint32)res)<<7;
				REG_D[(word2 >> 12) & 7] = FLAG_Z;
				return;
			}
			FLAG_Z = MASK_OUT_ABOVE_32(res) | (res>>32);
			FLAG_N = NFLAG_64(res);
			FLAG_V = VFLAG_CLEAR;
			REG_D[word2 & 7] = (res >> 32);
			REG_D[(word2 >> 12) & 7] = MASK_OUT_ABOVE_32(res);
			return;
		}

		res = src * dst;
		if(!BIT_A(word2))
		{
			FLAG_Z = MASK_OUT_ABOVE_32(res);
			FLAG_N = NFLAG_32(res);
			FLAG_V = (res > 0xffffffff)<<7;
			REG_D[(word2 >> 12) & 7] = FLAG_Z;
			return;
		}
		FLAG_Z = MASK_OUT_ABOVE_32(res) | (res>>32);
		FLAG_N = NFLAG_64(res);
		FLAG_V = VFLAG_CLEAR;
		REG_D[word2 & 7] = (res >> 32);
		REG_D[(word2 >> 12) & 7] = MASK_OUT_ABOVE_32(res);
		return;
	}
	m68ki_exception_illegal();

#else

	if(FUNC2(CPU_TYPE))
	{
		uint word2 = FUNC9();
		uint src = FUNC8();
		uint dst = REG_D[(word2 >> 12) & 7];
		uint neg = FUNC3(src ^ dst);
		uint src1;
		uint src2;
		uint dst1;
		uint dst2;
		uint r1;
		uint r2;
		uint r3;
		uint r4;
		uint lo;
		uint hi;

		FLAG_C = CFLAG_CLEAR;

		if(FUNC1(word2))			   /* signed */
		{
			if(FUNC3(src))
				src = (uint)FUNC5(-(sint)src);
			if(FUNC3(dst))
				dst = (uint)FUNC5(-(sint)dst);
		}

		src1 = FUNC4(src);
		src2 = src>>16;
		dst1 = FUNC4(dst);
		dst2 = dst>>16;


		r1 = src1 * dst1;
		r2 = src1 * dst2;
		r3 = src2 * dst1;
		r4 = src2 * dst2;

		lo = r1 + (FUNC4(r2)<<16) + (FUNC4(r3)<<16);
		hi = r4 + (r2>>16) + (r3>>16) + (((r1>>16) + FUNC4(r2) + FUNC4(r3)) >> 16);

		if(FUNC1(word2) && neg)
		{
			hi = (uint)FUNC5((-(sint)hi) - (lo != 0));
			lo = (uint)FUNC5(-(sint)lo);
		}

		if(FUNC0(word2))
		{
			REG_D[word2 & 7] = hi;
			REG_D[(word2 >> 12) & 7] = lo;
			FLAG_N = FUNC6(hi);
			FLAG_Z = hi | lo;
			FLAG_V = VFLAG_CLEAR;
			return;
		}

		REG_D[(word2 >> 12) & 7] = lo;
		FLAG_N = FUNC6(lo);
		FLAG_Z = lo;
		if(FUNC1(word2))
			FLAG_V = (!((FUNC3(lo) && hi == 0xffffffff) || (!FUNC3(lo) && !hi)))<<7;
		else
			FLAG_V = (hi != 0) << 7;
		return;
	}
	FUNC10();

#endif
}