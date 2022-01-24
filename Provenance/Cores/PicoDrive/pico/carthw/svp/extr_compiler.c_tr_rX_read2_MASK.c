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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int* hostreg_r ; 
 int known_regb ; 
 TYPE_1__ known_regs ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(int op)
{
	int r = (op&3) | ((op>>6)&4); // src

	if ((r&3) == 3) {
		FUNC8((op&0x100) | ((op>>2)&3));
	} else if (known_regb & (1 << (r+8))) {
		FUNC8((op&0x100) | known_regs.r[r]);
	} else {
		int reg = (r < 4) ? 8 : 9;
		int ror = ((4 - (r&3))*8) & 0x1f;
		FUNC3(1,reg,ror/2,0xff);			// and r1, r{7,8}, <mask>
		if (r >= 4)
			FUNC6(1,1,((ror-8)&0x1f)/2,1);		// orr r1, r1, 1<<shift
		if (r&3) FUNC2(1,7,1, (r&3)*8-1);	// add r1, r7, r1, lsr #lsr
		else     FUNC1(1,7,1,1);
		FUNC4(0,1);				// ldrh r0, [r1]
	}
	FUNC5(2,7,0x48c);					// ptr_iram_rom
	FUNC1(2,2,0,1);				// add  r2, r2, r0, lsl #1
	FUNC0(0,0,0,1);					// add  r0, r0, #1
	if ((r&3) == 3) {
		FUNC9((op&0x100) | ((op>>2)&3));
	} else if (known_regb & (1 << (r+8))) {
		FUNC9((op&0x100) | known_regs.r[r]);
	} else {
		FUNC7(0,1);				// strh r0, [r1]
		hostreg_r[1] = -1;
	}
	FUNC4(0,2);					// ldrh r0, [r2]
	hostreg_r[0] = hostreg_r[2] = -1;
}