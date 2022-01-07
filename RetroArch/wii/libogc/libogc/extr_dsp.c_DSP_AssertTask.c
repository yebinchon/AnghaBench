
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {scalar_t__ prio; scalar_t__ state; } ;
typedef TYPE_1__ dsptask_t ;


 int DSPCR_AIINT ;
 int DSPCR_ARINT ;
 int DSPCR_DSPINT ;
 int DSPCR_PIINT ;
 scalar_t__ DSPTASK_RUN ;
 int TRUE ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 TYPE_1__* __dsp_currtask ;
 TYPE_1__* __dsp_rudetask ;
 int __dsp_rudetask_pend ;
 int* _dspReg ;

dsptask_t* DSP_AssertTask(dsptask_t *task)
{
 u32 level;
 dsptask_t *ret = ((void*)0);

 _CPU_ISR_Disable(level);
 if(task==__dsp_currtask) {
  __dsp_rudetask = task;
  __dsp_rudetask_pend = TRUE;
  ret = task;
 } else {
  if(task->prio<__dsp_currtask->prio) {
   __dsp_rudetask = task;
   __dsp_rudetask_pend = TRUE;
   if(__dsp_currtask->state==DSPTASK_RUN)
    _dspReg[5] = ((_dspReg[5]&~(DSPCR_DSPINT|DSPCR_ARINT|DSPCR_AIINT))|DSPCR_PIINT);

   ret = task;
  }
 }
 _CPU_ISR_Restore(level);

 return ret;
}
