
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s64 ;
typedef int s32 ;
typedef int dvdcallbacklow ;


 int DVD_LowUnlockDrive (int ) ;
 int __dvd_finaloffsetcb ;
 int __dvd_setgcmoffsetcb ;
 scalar_t__ __dvd_stopnextint ;
 int * __dvd_usrdata ;

s32 DVD_LowSetGCMOffset(s64 offset,dvdcallbacklow cb)
{
 static s64 loc_offset = 0;
 loc_offset = offset;

 __dvd_finaloffsetcb = cb;
 __dvd_stopnextint = 0;
 __dvd_usrdata = &loc_offset;

 DVD_LowUnlockDrive(__dvd_setgcmoffsetcb);
 return 1;
}
