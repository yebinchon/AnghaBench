
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dvdcallbacklow ;


 int DCInvalidateRange (int *,int ) ;
 int DVD_DRVINFSIZE ;
 int DVD_LowInquiry (int *,int ) ;
 int __dvd_driveinfo ;
 int __dvd_finalpatchcb ;
 int __dvd_fwpatchcb ;
 int * _diReg ;

__attribute__((used)) static void __dvd_fwpatchmem(dvdcallbacklow cb)
{
 __dvd_finalpatchcb = cb;

 _diReg[1] = _diReg[1];
 DCInvalidateRange(&__dvd_driveinfo,DVD_DRVINFSIZE);
 DVD_LowInquiry(&__dvd_driveinfo,__dvd_fwpatchcb);
 return;
}
