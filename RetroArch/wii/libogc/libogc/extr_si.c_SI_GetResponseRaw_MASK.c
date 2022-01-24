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
typedef  size_t s32 ;

/* Variables and functions */
 int SISR_RDST ; 
 int FUNC0 (size_t) ; 
 int /*<<< orphan*/ * _siReg ; 
 int /*<<< orphan*/ ** inputBuffer ; 
 int* inputBufferValid ; 

u32 FUNC1(s32 chan)
{
	u32 status,ret;
	ret = 0;
	status = FUNC0(chan);
	if(status&SISR_RDST) {
		inputBuffer[chan][0] = _siReg[(chan*3)+1];
		inputBuffer[chan][1] = _siReg[(chan*3)+2];
		inputBufferValid[chan] = 1;
		ret = 1;
	}
	return ret;
}