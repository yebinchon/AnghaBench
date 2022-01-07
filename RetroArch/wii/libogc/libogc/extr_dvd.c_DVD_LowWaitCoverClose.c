
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef int dvdcallbacklow ;


 int DVD_CVR_MSK ;
 int __dvd_callback ;
 scalar_t__ __dvd_stopnextint ;
 int __dvd_waitcoverclose ;
 int * _diReg ;

s32 DVD_LowWaitCoverClose(dvdcallbacklow cb)
{
 __dvd_callback = cb;
 __dvd_waitcoverclose = 1;
 __dvd_stopnextint = 0;
 _diReg[1] = DVD_CVR_MSK;
 return 1;
}
