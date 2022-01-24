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
typedef  int /*<<< orphan*/  UBYTE ;

/* Variables and functions */
 int ANTIC_xpos ; 
 int /*<<< orphan*/  CPU_SetI ; 
 int /*<<< orphan*/  CPU_regPC ; 
 int /*<<< orphan*/  CPU_regS ; 
 int /*<<< orphan*/  INC_RET_NESTING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PHPB0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	UBYTE S = CPU_regS;
	UBYTE data;

	FUNC1(CPU_regPC);
	PHPB0;
	CPU_SetI;
	CPU_regPC = FUNC0(0xfffa);
	CPU_regS = S;
	ANTIC_xpos += 7; /* handling an interrupt by 6502 takes 7 cycles */
	INC_RET_NESTING;
}