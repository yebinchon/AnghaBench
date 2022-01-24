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
 int DSPCR_DSPRESET ; 
 int DSPCR_HALT ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_DSP_DSP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * __dsp_currtask ; 
 int /*<<< orphan*/  __dsp_def_taskcb ; 
 int /*<<< orphan*/ * __dsp_firsttask ; 
 scalar_t__ __dsp_inited ; 
 int /*<<< orphan*/  __dsp_intcb ; 
 int /*<<< orphan*/  __dsp_inthandler ; 
 int /*<<< orphan*/ * __dsp_lasttask ; 
 int* _dspReg ; 
 int /*<<< orphan*/ * tmp_task ; 

void FUNC5()
{
	u32 level;
	FUNC2(level);
	if(__dsp_inited==FALSE) {
		__dsp_intcb= __dsp_def_taskcb;

		FUNC1(IRQ_DSP_DSP,__dsp_inthandler,NULL);
		FUNC4(FUNC0(IRQ_DSP_DSP));

		_dspReg[5] = (_dspReg[5]&~(DSPCR_AIINT|DSPCR_ARINT|DSPCR_DSPINT))|DSPCR_DSPRESET;
		_dspReg[5] = (_dspReg[5]&~(DSPCR_HALT|DSPCR_AIINT|DSPCR_ARINT|DSPCR_DSPINT));

		__dsp_currtask = NULL;
		__dsp_firsttask = NULL;
		__dsp_lasttask = NULL;
		tmp_task = NULL;
		__dsp_inited = TRUE;
	}
	FUNC3(level);
}