
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int s32 ;
struct TYPE_6__ {int state; int (* cb ) (int,TYPE_1__*) ;} ;
typedef TYPE_1__ dvdcmdblk ;


 int __dvd_cancelcallback (int ,TYPE_1__*) ;
 scalar_t__ __dvd_canceling ;
 TYPE_1__ __dvd_dummycmdblk ;
 TYPE_1__* __dvd_executing ;
 int __dvd_fatalerror ;
 int __dvd_stateready () ;
 int __dvd_statetimeout () ;
 int stub1 (int,TYPE_1__*) ;

__attribute__((used)) static void __dvd_stateerrorcb(s32 result)
{
 dvdcmdblk *block;
 if(result==0x0010) {
  __dvd_executing->state = -1;
  __dvd_statetimeout();
  return;
 }

 __dvd_fatalerror = 1;
 block = __dvd_executing;
 __dvd_executing = &__dvd_dummycmdblk;
 if(block->cb) block->cb(-1,block);
 if(__dvd_canceling) {
  __dvd_canceling = 0;
  if(__dvd_cancelcallback) __dvd_cancelcallback(0,block);
 }
 __dvd_stateready();
}
