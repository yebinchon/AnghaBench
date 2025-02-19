
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int DVD_LowEnableExtensions (int ,void (*) (int)) ;
 int DVD_LowSetStatus (int,int (*) (int)) ;
 int DVD_LowSpinMotor (int,void (*) (int)) ;
 int DVD_SPINMOTOR_ACCEPT ;
 int DVD_SPINMOTOR_UP ;
 scalar_t__ DVD_STATUS_DISK_ID_NOT_READ ;
 int _SHIFTL (scalar_t__,int,int) ;
 int __dvd_extensionsenabled ;
 int __dvd_finalsudcb (int) ;
 int __dvd_lasterror ;
 int __dvd_stategettingerror () ;
 int __dvd_statetimeout () ;
 int * _diReg ;

__attribute__((used)) static void __dvd_handlespinupcb(s32 result)
{
 static u32 step = 0;
 if(result==0x0010) {
  __dvd_statetimeout();
  return;
 }
 if(result==0x0001) {
  if(step==0x0000) {
   step++;
   _diReg[1] = _diReg[1];
   DVD_LowEnableExtensions(__dvd_extensionsenabled,__dvd_handlespinupcb);
   return;
  }
  if(step==0x0001) {
   step++;
   _diReg[1] = _diReg[1];
   DVD_LowSpinMotor((DVD_SPINMOTOR_ACCEPT|DVD_SPINMOTOR_UP),__dvd_handlespinupcb);
   return;
  }
  if(step==0x0002) {
   step = 0;
   if(!__dvd_lasterror) {
    _diReg[1] = _diReg[1];
    DVD_LowSetStatus((_SHIFTL((DVD_STATUS_DISK_ID_NOT_READ+1),16,8)|0x00000300),__dvd_finalsudcb);
    return;
   }
   __dvd_finalsudcb(result);
   return;
  }
 }

 step = 0;
 __dvd_stategettingerror();
}
