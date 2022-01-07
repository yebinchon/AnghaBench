
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
typedef int s32 ;
typedef int dvdcallbacklow ;


 int DVD_AUDIOCONFIG ;
 int DVD_DI_START ;
 int __SetupTimeoutAlarm (struct timespec*) ;
 int __dvd_callback ;
 scalar_t__ __dvd_stopnextint ;
 int* _diReg ;

s32 DVD_LowAudioBufferConfig(s32 enable,u32 size,dvdcallbacklow cb)
{
 u32 val;
 struct timespec tb;

 __dvd_callback = cb;
 __dvd_stopnextint = 0;

 val = 0;
 if(enable) {
  val |= 0x00010000;
  if(!size) val |= 0x0000000a;
 }

 _diReg[2] = DVD_AUDIOCONFIG|val;
 _diReg[7] = DVD_DI_START;

 tb.tv_sec = 10;
 tb.tv_nsec = 0;
 __SetupTimeoutAlarm(&tb);

 return 1;
}
