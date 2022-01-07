
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;
typedef int dvdcallbacklow ;


 int DVD_LowUnlockDrive (int ) ;
 int __dvd_cntrldrivecb ;
 int __dvd_finalsudcb ;
 int __dvd_motorcntrl ;
 scalar_t__ __dvd_stopnextint ;

s32 DVD_LowControlMotor(u32 mode,dvdcallbacklow cb)
{
 __dvd_stopnextint = 0;
 __dvd_motorcntrl = mode;
 __dvd_finalsudcb = cb;
 DVD_LowUnlockDrive(__dvd_cntrldrivecb);

 return 1;

}
