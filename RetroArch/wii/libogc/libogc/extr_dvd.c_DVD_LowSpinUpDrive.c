
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef int dvdcallbacklow ;


 int __dvd_finalsudcb ;
 int __dvd_spinupdrivecb (int) ;

s32 DVD_LowSpinUpDrive(dvdcallbacklow cb)
{
 __dvd_finalsudcb = cb;
 __dvd_spinupdrivecb(1);

 return 1;
}
