
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DVD_CVR_MSK ;
 int DVD_DRIVERESET ;
 int DVD_RESETHARD ;
 int __dvd_drivestate ;
 int __dvd_lastresetend ;
 int __dvd_resetoccured ;
 int * _diReg ;
 int* _piReg ;
 int gettime () ;
 int udelay (int) ;

void DVD_LowReset(u32 reset_mode)
{
 u32 val;

 _diReg[1] = DVD_CVR_MSK;
 val = _piReg[9];
 _piReg[9] = ((val&~0x0004)|0x0001);

 udelay(12);

 if(reset_mode==DVD_RESETHARD) val |= 0x0004;
 val |= 0x0001;
 _piReg[9] = val;

 __dvd_resetoccured = 1;
 __dvd_lastresetend = gettime();
 __dvd_drivestate |= DVD_DRIVERESET;
}
