
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;
typedef int dvdcallbacklow ;


 int DVD_DI_START ;
 int DVD_FWREADMEM ;
 int __dvd_callback ;
 int __dvd_finalreadmemcb ;
 int __dvd_readmemcb ;
 scalar_t__ __dvd_stopnextint ;
 void* __dvd_usrdata ;
 int* _diReg ;

s32 DVD_LowReadmem(u32 address,void *buffer,dvdcallbacklow cb)
{
 __dvd_finalreadmemcb = cb;
 __dvd_usrdata = buffer;
 __dvd_callback = __dvd_readmemcb;
 __dvd_stopnextint = 0;

 _diReg[2] = DVD_FWREADMEM;
 _diReg[3] = address;
 _diReg[4] = 0x00010000;
 _diReg[7] = DVD_DI_START;

 return 1;
}
