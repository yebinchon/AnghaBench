
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DSPCR_AIINT ;
 int DSPCR_ARINT ;
 int DSPCR_DSPINT ;
 int __dsp_intcb () ;
 int* _dspReg ;

__attribute__((used)) static void __dsp_inthandler(u32 nIrq,void *pCtx)
{
 _dspReg[5] = (_dspReg[5]&~(DSPCR_AIINT|DSPCR_ARINT))|DSPCR_DSPINT;
 if(__dsp_intcb) __dsp_intcb();
}
