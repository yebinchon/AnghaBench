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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int* hostreg_r ; 

__attribute__((used)) static void FUNC2(int addr)
{
	int breg = 7;
	if (addr > 0x7f) {
		if (hostreg_r[1] != (0x100000|((addr&0x180)<<1))) {
			FUNC0(1,7,30/2,(addr&0x180)>>1);	// add  r1, r7, ((op&0x180)<<1)
			hostreg_r[1] = 0x100000|((addr&0x180)<<1);
		}
		breg = 1;
	}
	FUNC1(0,breg,(addr&0x7f)<<1);		// strh r0, [r1, (op&0x7f)<<1]
}