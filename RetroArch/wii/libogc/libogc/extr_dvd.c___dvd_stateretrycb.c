
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int s32 ;
struct TYPE_3__ {int state; } ;


 TYPE_1__* __dvd_executing ;
 int __dvd_statebusy (TYPE_1__*) ;
 int __dvd_stateerror (int) ;
 int __dvd_statetimeout () ;

__attribute__((used)) static void __dvd_stateretrycb(s32 result)
{
 if(result==0x0010) {
  __dvd_executing->state = -1;
  __dvd_statetimeout();
  return;
 }

 if(result&0x0002) __dvd_stateerror(0x01234567);
 if(result==0x0001) {
  __dvd_statebusy(__dvd_executing);
  return;
 }
}
