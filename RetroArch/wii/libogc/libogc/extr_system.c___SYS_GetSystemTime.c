
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ s64 ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 scalar_t__ gettime () ;

s64 __SYS_GetSystemTime()
{
 u32 level;
 s64 now;
 s64 *pBootTime = (s64*)0x800030d8;

 _CPU_ISR_Disable(level);
 now = gettime();
 now += *pBootTime;
 _CPU_ISR_Restore(level);
 return now;
}
