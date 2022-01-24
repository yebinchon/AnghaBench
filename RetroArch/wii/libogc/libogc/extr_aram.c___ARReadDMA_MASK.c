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
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int* _dspReg ; 

__attribute__((used)) static void FUNC3(u32 memaddr,u32 aramaddr,u32 len)
{
	// set main memory address
	_dspReg[16] = (_dspReg[16]&~0x03ff)|FUNC0(memaddr,16,16);
	_dspReg[17] = (_dspReg[17]&~0xffe0)|FUNC0(memaddr, 0,16);

	// set aram address
	_dspReg[18] = (_dspReg[18]&~0x03ff)|FUNC0(aramaddr,16,16);
	_dspReg[19] = (_dspReg[19]&~0xffe0)|FUNC0(aramaddr, 0,16);

	// set cntrl bits
	_dspReg[20] = (_dspReg[20]&~0x8000)|0x8000;
	_dspReg[20] = (_dspReg[20]&~0x03ff)|FUNC0(len,16,16);
	_dspReg[21] = (_dspReg[21]&~0xffe0)|FUNC0(len, 0,16);

	FUNC2();
	FUNC1();

}