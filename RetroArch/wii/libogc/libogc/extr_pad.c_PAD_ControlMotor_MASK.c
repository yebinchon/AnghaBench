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
typedef  int u32 ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PAD_MOTOR_STOP_HARD ; 
 int SI_GC_NOMOTOR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int __pad_analogmode ; 
 int __pad_enabledbits ; 
 int __pad_spec ; 

void FUNC6(s32 chan,u32 cmd)
{
	u32 level;
	u32 mask,type;

	FUNC4(level);

	mask = FUNC0(chan);
	if(__pad_enabledbits&mask) {
		type = FUNC1(chan);
		if(!(type&SI_GC_NOMOTOR)) {
			if(__pad_spec<2 && cmd==PAD_MOTOR_STOP_HARD) cmd = 0;

			cmd = 0x00400000|__pad_analogmode|(cmd&0x03);
			FUNC2(chan,cmd);
			FUNC3();
		}
	}
	FUNC5(level);
}