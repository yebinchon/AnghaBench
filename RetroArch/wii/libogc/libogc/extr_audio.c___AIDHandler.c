
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DSPCR_AIINT ;
 int DSPCR_ARINT ;
 int DSPCR_DSPINT ;
 int __AIActive ;
 int __AICallbackStackSwitch (int (*) ()) ;
 int __AID_Callback () ;
 scalar_t__ __CallbackStack ;
 int* _dspReg ;

__attribute__((used)) static void __AIDHandler(u32 nIrq,void *pCtx)
{
 _dspReg[5] = (_dspReg[5]&~(DSPCR_DSPINT|DSPCR_ARINT))|DSPCR_AIINT;
 if(__AID_Callback) {
  if(!__AIActive) {
   __AIActive = 1;
   if(__CallbackStack)
    __AICallbackStackSwitch(__AID_Callback);
   else
    __AID_Callback();
   __AIActive = 0;
  }
 }
}
