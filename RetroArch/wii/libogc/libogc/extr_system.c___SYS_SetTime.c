
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ s64 ;


 int EXI_ProbeReset () ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 scalar_t__ gettime () ;
 int settime (scalar_t__) ;

void __SYS_SetTime(s64 time)
{
 u32 level;
 s64 now;
 s64 *pBootTime = (s64*)0x800030d8;

 _CPU_ISR_Disable(level);
 now = gettime();
 now -= time;
 now += *pBootTime;
 *pBootTime = now;
 settime(now);
 EXI_ProbeReset();
 _CPU_ISR_Restore(level);
}
