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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int,int) ; 
 int* _dspReg ; 

void FUNC3(u32 startaddr,u32 len)
{
	u32 level;

	FUNC0(level);
	_dspReg[24] = (_dspReg[24]&~0x1fff)|(FUNC2(startaddr,16,13));
	_dspReg[25] = (_dspReg[25]&~0xffe0)|(startaddr&0xffff);
	_dspReg[27] = (_dspReg[27]&~0x7fff)|(FUNC2(len,5,15));
	FUNC1(level);
}