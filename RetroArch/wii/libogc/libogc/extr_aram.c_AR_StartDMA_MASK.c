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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int* _dspReg ; 

void FUNC4(u32 dir,u32 memaddr,u32 aramaddr,u32 len)
{
	u32 level;

	FUNC0(level);

	// set main memory address
	_dspReg[16] = (_dspReg[16]&~0x03ff)|FUNC3(memaddr,16,16);
	_dspReg[17] = (_dspReg[17]&~0xffe0)|FUNC3(memaddr, 0,16);

	// set aram address
	_dspReg[18] = (_dspReg[18]&~0x03ff)|FUNC3(aramaddr,16,16);
	_dspReg[19] = (_dspReg[19]&~0xffe0)|FUNC3(aramaddr, 0,16);

	// set cntrl bits
	_dspReg[20] = (_dspReg[20]&~0x8000)|FUNC2(dir,15,1);
	_dspReg[20] = (_dspReg[20]&~0x03ff)|FUNC3(len,16,16);
	_dspReg[21] = (_dspReg[21]&~0xffe0)|FUNC3(len, 0,16);

	FUNC1(level);
}