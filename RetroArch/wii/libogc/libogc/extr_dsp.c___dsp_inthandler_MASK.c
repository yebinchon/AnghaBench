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
 int DSPCR_AIINT ; 
 int DSPCR_ARINT ; 
 int DSPCR_DSPINT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int* _dspReg ; 

__attribute__((used)) static void FUNC1(u32 nIrq,void *pCtx)
{
	_dspReg[5] = (_dspReg[5]&~(DSPCR_AIINT|DSPCR_ARINT))|DSPCR_DSPINT;
	if(&__dsp_intcb) FUNC0();
}