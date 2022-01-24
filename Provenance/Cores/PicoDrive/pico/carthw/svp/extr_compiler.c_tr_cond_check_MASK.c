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
 int A_COND_AL ; 
 int A_COND_EQ ; 
 int A_COND_MI ; 
 int A_COND_NE ; 
 int A_COND_PL ; 
 int /*<<< orphan*/  EL_ANOMALY ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int KRREG_ST ; 
 int dirty_regb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(int op)
{
	int f = (op & 0x100) >> 8;
	switch (op&0xf0) {
		case 0x00: return A_COND_AL;	/* always true */
		case 0x50:			/* Z matches f(?) bit */
			if (dirty_regb & KRREG_ST) return f ? A_COND_EQ : A_COND_NE;
			FUNC0(6, 0, 4);
			return f ? A_COND_NE : A_COND_EQ;
		case 0x70:			/* N matches f(?) bit */
			if (dirty_regb & KRREG_ST) return f ? A_COND_MI : A_COND_PL;
			FUNC0(6, 0, 8);
			return f ? A_COND_NE : A_COND_EQ;
		default:
			FUNC1(EL_ANOMALY, "unimplemented cond?\n");
			FUNC2();
			return 0;
	}
}