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
 int /*<<< orphan*/  FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 int FLAG_Z ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
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
		sint local_offset;
		uint width = word2;
		uint data;
		uint bit;
		uint ea = FUNC3();


		if(FUNC1(word2))
			offset = FUNC4(REG_D[offset&7]);
		if(FUNC0(word2))
			width = REG_D[width&7];

		/* Offset is signed so we have to use ugly math =( */
		ea += offset / 8;
		local_offset = offset % 8;
		if(local_offset < 0)
		{
			local_offset += 8;
			ea--;
		}
		width = ((width-1) & 31) + 1;

		data = FUNC9(ea);
		data = FUNC5(data<<local_offset);

		if((local_offset+width) > 32)
			data |= (FUNC10(ea+4) << local_offset) >> 8;

		FLAG_N = FUNC6(data);
		data  >>= (32 - width);

		FLAG_Z = data;
		FLAG_V = VFLAG_CLEAR;
		FLAG_C = CFLAG_CLEAR;

		for(bit = 1<<(width-1);bit && !(data & bit);bit>>= 1)
			offset++;

		REG_D[(word2>>12)&7] = offset;

		return;
	}
	FUNC8();
}