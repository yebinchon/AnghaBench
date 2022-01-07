
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DSPCR_AIINT ;
 int DSPCR_ARINT ;
 int DSPCR_DSPINT ;
 int DSPCR_DSPRESET ;
 int DSPCR_HALT ;
 scalar_t__ FALSE ;
 int IRQMASK (int ) ;
 int IRQ_DSP_DSP ;
 int IRQ_Request (int ,int ,int *) ;
 scalar_t__ TRUE ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __UnmaskIrq (int ) ;
 int * __dsp_currtask ;
 int __dsp_def_taskcb ;
 int * __dsp_firsttask ;
 scalar_t__ __dsp_inited ;
 int __dsp_intcb ;
 int __dsp_inthandler ;
 int * __dsp_lasttask ;
 int* _dspReg ;
 int * tmp_task ;

void DSP_Init()
{
 u32 level;
 _CPU_ISR_Disable(level);
 if(__dsp_inited==FALSE) {
  __dsp_intcb= __dsp_def_taskcb;

  IRQ_Request(IRQ_DSP_DSP,__dsp_inthandler,((void*)0));
  __UnmaskIrq(IRQMASK(IRQ_DSP_DSP));

  _dspReg[5] = (_dspReg[5]&~(DSPCR_AIINT|DSPCR_ARINT|DSPCR_DSPINT))|DSPCR_DSPRESET;
  _dspReg[5] = (_dspReg[5]&~(DSPCR_HALT|DSPCR_AIINT|DSPCR_ARINT|DSPCR_DSPINT));

  __dsp_currtask = ((void*)0);
  __dsp_firsttask = ((void*)0);
  __dsp_lasttask = ((void*)0);
  tmp_task = ((void*)0);
  __dsp_inited = TRUE;
 }
 _CPU_ISR_Restore(level);
}
