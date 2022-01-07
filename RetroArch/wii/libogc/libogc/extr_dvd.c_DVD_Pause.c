
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int * __dvd_executing ;
 int __dvd_pauseflag ;
 int __dvd_pausingflag ;

void DVD_Pause()
{
 u32 level;

 _CPU_ISR_Disable(level);
 __dvd_pauseflag = 1;
 if(__dvd_executing==((void*)0)) __dvd_pausingflag = 1;
 _CPU_ISR_Restore(level);
}
