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
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 () ; 
 int* REG_D ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  VFLAG_CLEAR ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(void)
{
	if(FUNC2(CPU_TYPE))
	{
		uint word2 = FUNC4();
		uint offset = (word2>>6)&31;
		uint width = word2;
		uint64 data = DY;


		if(FUNC1(word2))
			offset = REG_D[offset&7];
		if(FUNC0(word2))
			width = REG_D[width&7];

		offset &= 31;
		width = ((width-1) & 31) + 1;

		data = FUNC5(data, offset);
		FLAG_N = FUNC3(data);
		data >>= 32 - width;

		FLAG_Z = data;
		FLAG_V = VFLAG_CLEAR;
		FLAG_C = CFLAG_CLEAR;

		REG_D[(word2>>12)&7] = data;

		return;
	}
	FUNC6();
}