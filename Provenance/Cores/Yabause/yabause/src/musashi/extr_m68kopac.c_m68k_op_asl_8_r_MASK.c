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
typedef  int uint ;

/* Variables and functions */
 int CFLAG_CLEAR ; 
 int CYC_SHIFT ; 
 int DX ; 
 int DY ; 
 int FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int FLAG_V ; 
 int FLAG_X ; 
 int FLAG_Z ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  NFLAG_CLEAR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int VFLAG_CLEAR ; 
 int ZFLAG_SET ; 
 int* m68ki_shift_8_table ; 

void FUNC4(void)
{
	uint* r_dst = &DY;
	uint shift = DX & 0x3f;
	uint src = FUNC0(*r_dst);
	uint res = FUNC0(src << shift);

	if(shift != 0)
	{
		FUNC3(shift<<CYC_SHIFT);

		if(shift < 8)
		{
			*r_dst = FUNC1(*r_dst) | res;
			FLAG_X = FLAG_C = src << shift;
			FLAG_N = FUNC2(res);
			FLAG_Z = res;
			src &= m68ki_shift_8_table[shift + 1];
			FLAG_V = (!(src == 0 || src == m68ki_shift_8_table[shift + 1]))<<7;
			return;
		}

		*r_dst &= 0xffffff00;
		FLAG_X = FLAG_C = ((shift == 8 ? src & 1 : 0))<<8;
		FLAG_N = NFLAG_CLEAR;
		FLAG_Z = ZFLAG_SET;
		FLAG_V = (!(src == 0))<<7;
		return;
	}

	FLAG_C = CFLAG_CLEAR;
	FLAG_N = FUNC2(src);
	FLAG_Z = src;
	FLAG_V = VFLAG_CLEAR;
}