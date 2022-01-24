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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  CFLAG_CLEAR ; 
 int /*<<< orphan*/  CPU_TYPE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int DY ; 
 int /*<<< orphan*/  FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 int FLAG_Z ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 
 int* REG_D ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  VFLAG_CLEAR ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(void)
{
	if(FUNC2(CPU_TYPE))
	{
		uint word2 = FUNC5();
		uint offset = (word2>>6)&31;
		uint width = word2;
		uint* data = &DY;
		uint64 mask;


		if(FUNC1(word2))
			offset = REG_D[offset&7];
		if(FUNC0(word2))
			width = REG_D[width&7];


		offset &= 31;
		width = ((width-1) & 31) + 1;


		mask = FUNC3(0xffffffff << (32 - width));
		mask = FUNC6(mask, offset);

		FLAG_N = FUNC4(*data<<offset);
		FLAG_Z = *data & mask;
		FLAG_V = VFLAG_CLEAR;
		FLAG_C = CFLAG_CLEAR;

		*data |= mask;

		return;
	}
	FUNC7();
}