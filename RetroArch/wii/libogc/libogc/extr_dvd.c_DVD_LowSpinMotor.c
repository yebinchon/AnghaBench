
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;
typedef int dvdcallbacklow ;


 int DVD_DI_START ;
 int DVD_FWCTRLMOTOR ;
 int __dvd_callback ;
 scalar_t__ __dvd_stopnextint ;
 int* _diReg ;

s32 DVD_LowSpinMotor(u32 mode,dvdcallbacklow cb)
{
 __dvd_callback = cb;
 __dvd_stopnextint = 0;

 _diReg[2] = DVD_FWCTRLMOTOR|(mode&0x0000ff00);
 _diReg[3] = 0;
 _diReg[4] = 0;
 _diReg[7] = DVD_DI_START;

 return 1;
}
