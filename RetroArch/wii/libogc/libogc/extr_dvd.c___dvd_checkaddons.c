
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dvdcallbacklow ;


 int DCInvalidateRange (int *,int ) ;
 int DVD_DISKIDSIZE ;
 int DVD_LowReadId (int *,int ) ;
 int __dvd_checkaddonscb ;
 int __dvd_finaladdoncb ;
 int __dvd_tmpid0 ;
 int * _diReg ;

__attribute__((used)) static void __dvd_checkaddons(dvdcallbacklow cb)
{
 __dvd_finaladdoncb = cb;


 _diReg[1] = _diReg[1];
 DCInvalidateRange(&__dvd_tmpid0,DVD_DISKIDSIZE);
 DVD_LowReadId(&__dvd_tmpid0,__dvd_checkaddonscb);
 return;
}
