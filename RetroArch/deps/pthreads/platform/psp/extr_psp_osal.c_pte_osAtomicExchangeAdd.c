
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pspSdkDisableInterrupts () ;
 int pspSdkEnableInterrupts (int) ;

int pte_osAtomicExchangeAdd(int volatile* pAddend, int value)
{
   int intc = pspSdkDisableInterrupts();
   int origVal = *pAddend;

   *pAddend += value;

   pspSdkEnableInterrupts(intc);

   return origVal;
}
