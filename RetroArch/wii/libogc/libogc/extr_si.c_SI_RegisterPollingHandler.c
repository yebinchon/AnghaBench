
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int * RDSTHandler ;


 int SI_EnablePollingInterrupt (int ) ;
 int TRUE ;
 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int ** rdstHandlers ;

u32 SI_RegisterPollingHandler(RDSTHandler handler)
{
 u32 level,i;

 _CPU_ISR_Disable(level);

 i = 0;
 for(i=0;i<4;i++) {
  if(rdstHandlers[i]==handler) {
   _CPU_ISR_Restore(level);
   return 1;
  }
 }

 for(i=0;i<4;i++) {
  if(rdstHandlers[i]==((void*)0)) {
   rdstHandlers[i] = handler;
   SI_EnablePollingInterrupt(TRUE);
   _CPU_ISR_Restore(level);
   return 1;
  }
 }

 _CPU_ISR_Restore(level);
 return 0;
}
