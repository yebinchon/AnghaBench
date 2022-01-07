
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int s64 ;
typedef int s32 ;
typedef int dvdcallbacklow ;


 scalar_t__ DVD_DI_START ;
 scalar_t__ DVD_FWSETOFFSET ;
 int __dvd_callback ;
 scalar_t__ __dvd_stopnextint ;
 scalar_t__* _diReg ;

s32 DVD_LowSetOffset(s64 offset,dvdcallbacklow cb)
{
 __dvd_stopnextint = 0;
 __dvd_callback = cb;

 _diReg[2] = DVD_FWSETOFFSET;
 _diReg[3] = (u32)(offset>>2);
 _diReg[4] = 0;
 _diReg[7] = DVD_DI_START;

 return 1;
}
