
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int DVD_GetCmdBlockStatus (int *) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __dvd_dummycmdblk ;
 int * __dvd_executing ;
 scalar_t__ __dvd_fatalerror ;
 scalar_t__ __dvd_pausingflag ;

s32 DVD_GetDriveStatus()
{
 s32 ret;
 u32 level;

 _CPU_ISR_Disable(level);
 if(__dvd_fatalerror) ret = -1;
 else {
  if(__dvd_pausingflag) ret = 8;
  else {
   if(!__dvd_executing || __dvd_executing==&__dvd_dummycmdblk) ret = 0;
   else ret = DVD_GetCmdBlockStatus(__dvd_executing);
  }
 }
 _CPU_ISR_Restore(level);
 return ret;
}
