
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ DSPCallback ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 scalar_t__ __dsp_def_taskcb ;
 scalar_t__ __dsp_intcb ;

DSPCallback DSP_RegisterCallback(DSPCallback usr_cb)
{
 u32 level;
 DSPCallback ret;
 _CPU_ISR_Disable(level);
 ret = __dsp_intcb;
 if(usr_cb)
  __dsp_intcb = usr_cb;
 else
  __dsp_intcb = __dsp_def_taskcb;
 _CPU_ISR_Restore(level);

 return ret;
}
