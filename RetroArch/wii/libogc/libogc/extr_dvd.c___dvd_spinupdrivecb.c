
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int DVD_CHIPPRESENT ;
 int DVD_DRIVERESET ;
 int DVD_INTEROPER ;
 int DVD_RESETHARD ;
 int DVD_Reset (int ) ;
 int __dvd_checkaddons (void (*) (int)) ;
 int __dvd_drivechecked ;
 int __dvd_drivestate ;
 int __dvd_finalsudcb (int) ;
 int __dvd_fwpatchmem (void (*) (int)) ;
 int __dvd_handlespinup () ;
 int __dvd_stategettingerror () ;
 int __dvd_statetimeout () ;
 int udelay (int) ;

__attribute__((used)) static void __dvd_spinupdrivecb(s32 result)
{
 if(result==0x0010) {
  __dvd_statetimeout();
  return;
 }
 if(result==0x0001) {
  if(!__dvd_drivechecked) {
   __dvd_checkaddons(__dvd_spinupdrivecb);
   return;
  }
  if(!(__dvd_drivestate&DVD_CHIPPRESENT)) {
   if(!(__dvd_drivestate&DVD_INTEROPER)) {
    if(!(__dvd_drivestate&DVD_DRIVERESET)) {
     DVD_Reset(DVD_RESETHARD);
     udelay(1150*1000);
    }
    __dvd_fwpatchmem(__dvd_spinupdrivecb);
    return;
   }
   __dvd_handlespinup();
   return;
  }

  __dvd_finalsudcb(result);
  return;
 }
 __dvd_stategettingerror();
}
