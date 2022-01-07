
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SICOMCSR_TSTART ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __si_completetransfer () ;
 int __si_transfernext (int) ;
 int* _siReg ;

u32 SI_Sync()
{
 u32 level,ret;

 while(_siReg[13]&SICOMCSR_TSTART);

 _CPU_ISR_Disable(level);
 ret = __si_completetransfer();
 __si_transfernext(4);
 _CPU_ISR_Restore(level);

 return ret;
}
