
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
typedef int s64 ;
typedef int s32 ;
typedef int dvdcallbacklow ;


 int DVD_AUDIOSTREAM ;
 int DVD_DI_START ;
 int __SetupTimeoutAlarm (struct timespec*) ;
 int __dvd_callback ;
 scalar_t__ __dvd_stopnextint ;
 int* _diReg ;

s32 DVD_LowAudioStream(u32 subcmd,u32 len,s64 offset,dvdcallbacklow cb)
{
 struct timespec tb;

 __dvd_callback = cb;
 __dvd_stopnextint = 0;

 _diReg[2] = DVD_AUDIOSTREAM|subcmd;
 _diReg[3] = (u32)(offset>>2);
 _diReg[4] = len;
 _diReg[7] = DVD_DI_START;

 tb.tv_sec = 10;
 tb.tv_nsec = 0;
 __SetupTimeoutAlarm(&tb);

 return 1;
}
