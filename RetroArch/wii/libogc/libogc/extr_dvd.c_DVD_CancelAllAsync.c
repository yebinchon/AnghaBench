
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;
typedef int dvdcbcallback ;


 int DVD_Pause () ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;

s32 DVD_CancelAllAsync(dvdcbcallback cb)
{
 u32 level;
 _CPU_ISR_Disable(level);
 DVD_Pause();
 _CPU_ISR_Restore(level);
 return 1;
}
