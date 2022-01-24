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
struct TYPE_2__ {int* r; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int* hostreg_r ; 
 int known_regb ; 
 TYPE_1__ known_regs ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(int op)
{
	if ((op&3) == 3)
	{
		int mod = (op>>2) & 3; // direct addressing
		FUNC5((op & 0x100) + mod);
	}
	else
	{
		int r = (op&3) | ((op>>6)&4);
		if (known_regb & (1 << (r + 8))) {
			FUNC5((op&0x100) | known_regs.r[r]);
		} else {
			int reg = (r < 4) ? 8 : 9;
			int ror = ((4 - (r&3))*8) & 0x1f;
			FUNC2(1,reg,ror/2,0xff);			// and r1, r{7,8}, <mask>
			if (r >= 4)
				FUNC3(1,1,((ror-8)&0x1f)/2,1);		// orr r1, r1, 1<<shift
			if (r&3) FUNC1(1,7,1, (r&3)*8-1);	// add r1, r7, r1, lsr #lsr
			else     FUNC0(1,7,1,1);
			FUNC4(0,1);				// strh r0, [r1]
			hostreg_r[1] = -1;
		}
		FUNC6(r, (op>>2) & 3, 0, 1);
	}
}