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
typedef  int sint ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  CFLAG_CLEAR ; 
 int /*<<< orphan*/  CPU_TYPE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FLAG_C ; 
 int FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 int FLAG_Z ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 () ; 
 int* REG_D ; 
 int /*<<< orphan*/  VFLAG_CLEAR ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 

void FUNC11(void)
{
	if(FUNC2(CPU_TYPE))
	{
		uint word2 = FUNC7();
		sint offset = (word2>>6)&31;
		uint width = word2;
		uint mask_base;
		uint data_long;
		uint mask_long;
		uint data_byte = 0;
		uint mask_byte = 0;
		uint ea = FUNC3();

		if(FUNC1(word2))
			offset = FUNC4(REG_D[offset&7]);
		if(FUNC0(word2))
			width = REG_D[width&7];

		/* Offset is signed so we have to use ugly math =( */
		ea += offset / 8;
		offset %= 8;
		if(offset < 0)
		{
			offset += 8;
			ea--;
		}
		width = ((width-1) & 31) + 1;


		mask_base = FUNC5(0xffffffff << (32 - width));
		mask_long = mask_base >> offset;

		data_long = FUNC9(ea);
		FLAG_N = ((data_long & (0x80000000 >> offset))<<offset)>>24;
		FLAG_Z = data_long & mask_long;
		FLAG_V = VFLAG_CLEAR;
		FLAG_C = CFLAG_CLEAR;

		if((width + offset) > 32)
		{
			mask_byte = FUNC6(mask_base);
			data_byte = FUNC10(ea+4);
			FLAG_Z |= (data_byte & mask_byte);
		}
		return;
	}
	FUNC8();
}