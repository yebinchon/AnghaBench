
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int DVD_LowPatchDriveCode (int ) ;
 int DVD_LowUnlockDrive (void (*) (int)) ;
 int __dvd_finalpatchcb ;
 int __dvd_stategettingerror () ;
 int __dvd_statetimeout () ;
 int * _diReg ;

__attribute__((used)) static void __dvd_fwpatchcb(s32 result)
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
   DVD_LowUnlockDrive(__dvd_fwpatchcb);
   return;
  }
  if(step==0x0001) {
   step = 0;
   DVD_LowPatchDriveCode(__dvd_finalpatchcb);
   return;
  }
 }

 step = 0;
 __dvd_stategettingerror();
}
