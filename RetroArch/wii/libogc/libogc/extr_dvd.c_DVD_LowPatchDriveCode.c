
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int s32 ;
typedef int dvdcallbacklow ;
struct TYPE_2__ {int rel_date; } ;


 int DVD_MODEL04 ;
 int DVD_MODEL06 ;
 int DVD_MODEL08 ;
 int DVD_MODEL08Q ;
 TYPE_1__ __dvd_driveinfo ;
 int __dvd_finalpatchcb ;
 int * __dvd_patchcode04 ;
 scalar_t__ __dvd_patchcode04_size ;
 int * __dvd_patchcode06 ;
 scalar_t__ __dvd_patchcode06_size ;
 int * __dvd_patchcode08 ;
 scalar_t__ __dvd_patchcode08_size ;
 int * __dvd_patchcodeQ08 ;
 scalar_t__ __dvd_patchcodeQ08_size ;
 int __dvd_patchdrivecb (int ) ;
 scalar_t__ __dvd_stopnextint ;
 int * __dvdpatchcode ;
 scalar_t__ __dvdpatchcode_size ;

s32 DVD_LowPatchDriveCode(dvdcallbacklow cb)
{
 __dvd_finalpatchcb = cb;
 __dvd_stopnextint = 0;

 if(__dvd_driveinfo.rel_date==DVD_MODEL04) {
  __dvdpatchcode = __dvd_patchcode04;
  __dvdpatchcode_size = __dvd_patchcode04_size;
 } else if((__dvd_driveinfo.rel_date&0x0000ff00)==0x00000500) {
 } else if(__dvd_driveinfo.rel_date==DVD_MODEL06) {
  __dvdpatchcode = __dvd_patchcode06;
  __dvdpatchcode_size = __dvd_patchcode06_size;
 } else if(__dvd_driveinfo.rel_date==DVD_MODEL08) {
  __dvdpatchcode = __dvd_patchcode08;
  __dvdpatchcode_size = __dvd_patchcode08_size;
 } else if(__dvd_driveinfo.rel_date==DVD_MODEL08Q) {
  __dvdpatchcode = __dvd_patchcodeQ08;
  __dvdpatchcode_size = __dvd_patchcodeQ08_size;
 } else if((__dvd_driveinfo.rel_date&0x0000ff00)==0x00000900) {
 } else {
  __dvdpatchcode = ((void*)0);
  __dvdpatchcode_size = 0;
 }

 __dvd_patchdrivecb(0);
 return 1;
}
