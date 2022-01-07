
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int s32 ;
struct TYPE_2__ {int state; } ;


 int DVD_LowRequestError (int ) ;
 TYPE_1__* __dvd_executing ;
 int __dvd_stategotoretry () ;
 int __dvd_statetimeout () ;
 int __dvd_unrecoverederrorretrycb ;

__attribute__((used)) static void __dvd_unrecoverederrorcb(s32 result)
{
 if(result==0x0010) {
  __dvd_executing->state = -1;
  __dvd_statetimeout();
  return;
 }
 if(result&0x0001) {
  __dvd_stategotoretry();
  return;
 }
 if(!(result==0x0002)) DVD_LowRequestError(__dvd_unrecoverederrorretrycb);
}
