
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int DVD_LowSpinMotor (int ,int ) ;
 int __dvd_finalsudcb ;
 int __dvd_motorcntrl ;
 int __dvd_stategettingerror () ;
 int __dvd_statetimeout () ;

__attribute__((used)) static void __dvd_cntrldrivecb(s32 result)
{
 if(result==0x0010) {
  __dvd_statetimeout();
  return;
 }
 if(result==0x0001) {
  DVD_LowSpinMotor(__dvd_motorcntrl,__dvd_finalsudcb);
  return;
 }
 __dvd_stategettingerror();
}
