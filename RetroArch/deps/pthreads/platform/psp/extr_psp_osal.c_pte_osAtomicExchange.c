
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pspSdkDisableInterrupts () ;
 int pspSdkEnableInterrupts (int) ;

int pte_osAtomicExchange(int *ptarg, int val)
{
   int intc = pspSdkDisableInterrupts();
   int origVal = *ptarg;

   *ptarg = val;

   pspSdkEnableInterrupts(intc);

   return origVal;

}
