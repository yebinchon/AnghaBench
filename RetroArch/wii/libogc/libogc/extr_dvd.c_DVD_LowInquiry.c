
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
typedef int s32 ;
typedef int dvddrvinfo ;
typedef int dvdcallbacklow ;


 int DVD_DI_DMA ;
 int DVD_DI_START ;
 int DVD_DVDINQUIRY ;
 int __SetupTimeoutAlarm (struct timespec*) ;
 int __dvd_callback ;
 scalar_t__ __dvd_stopnextint ;
 int* _diReg ;

s32 DVD_LowInquiry(dvddrvinfo *info,dvdcallbacklow cb)
{
 struct timespec tb;

 __dvd_callback = cb;
 __dvd_stopnextint = 0;

 _diReg[2] = DVD_DVDINQUIRY;
 _diReg[4] = 0x20;
 _diReg[5] = (u32)info;
 _diReg[6] = 0x20;
 _diReg[7] = (DVD_DI_DMA|DVD_DI_START);

 tb.tv_sec = 10;
 tb.tv_nsec = 0;
 __SetupTimeoutAlarm(&tb);

 return 1;
}
