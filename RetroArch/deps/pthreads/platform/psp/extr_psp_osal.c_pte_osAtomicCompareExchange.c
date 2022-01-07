
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pspSdkDisableInterrupts () ;
 int pspSdkEnableInterrupts (int) ;

int pte_osAtomicCompareExchange(int *pdest, int exchange, int comp)
{
   int intc = pspSdkDisableInterrupts();
   int origVal = *pdest;

   if (*pdest == comp)
      *pdest = exchange;

   pspSdkEnableInterrupts(intc);

   return origVal;
}
