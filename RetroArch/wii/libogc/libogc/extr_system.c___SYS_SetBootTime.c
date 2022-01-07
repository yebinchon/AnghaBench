
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __SYS_GetRTC (int *) ;
 int __SYS_LockSram () ;
 int __SYS_SetTime (int ) ;
 int __SYS_UnlockSram (int ) ;
 int secs_to_ticks (int ) ;

void __SYS_SetBootTime()
{
 u32 gctime;

 __SYS_LockSram();
 __SYS_GetRTC(&gctime);
 __SYS_SetTime(secs_to_ticks(gctime));
 __SYS_UnlockSram(0);
}
