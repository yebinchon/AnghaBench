
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pspSdkDisableInterrupts () ;
 int pspSdkEnableInterrupts (int) ;

int pte_osAtomicDecrement(int *pdest)
{
   int val;

   int intc = pspSdkDisableInterrupts();

   (*pdest)--;
   val = *pdest;

   pspSdkEnableInterrupts(intc);

   return val;
}
