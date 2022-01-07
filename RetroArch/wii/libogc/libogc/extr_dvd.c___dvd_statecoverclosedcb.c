
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int s32 ;
struct TYPE_2__ {int state; } ;


 TYPE_1__* __dvd_executing ;
 scalar_t__ __dvd_internalretries ;
 int __dvd_statecheckid () ;
 int __dvd_stategettingerror () ;
 int __dvd_statetimeout () ;

__attribute__((used)) static void __dvd_statecoverclosedcb(s32 result)
{
 if(result==0x0010) {
  __dvd_executing->state = -1;
  __dvd_statetimeout();
  return;
 }

 if(!(result&0x0006)) {
  __dvd_internalretries = 0;
  __dvd_statecheckid();
  return;
 }

 if(result==0x0002) __dvd_stategettingerror();
}
