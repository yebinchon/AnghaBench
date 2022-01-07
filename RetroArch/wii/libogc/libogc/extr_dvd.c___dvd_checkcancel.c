
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef int s32 ;
struct TYPE_6__ {int state; int (* cb ) (int,TYPE_1__*) ;} ;
typedef TYPE_1__ dvdcmdblk ;


 int __dvd_cancelcallback (int ,TYPE_1__*) ;
 scalar_t__ __dvd_canceling ;
 TYPE_1__ __dvd_dummycmdblk ;
 TYPE_1__* __dvd_executing ;
 int __dvd_resumefromhere ;
 int __dvd_stateready () ;
 int stub1 (int,TYPE_1__*) ;

__attribute__((used)) static s32 __dvd_checkcancel(u32 cancelpt)
{
 dvdcmdblk *block;

 if(__dvd_canceling) {
  __dvd_resumefromhere = cancelpt;
  __dvd_canceling = 0;

  block = __dvd_executing;
  __dvd_executing = &__dvd_dummycmdblk;

  block->state = 10;
  if(block->cb) block->cb(-3,block);
  if(__dvd_cancelcallback) __dvd_cancelcallback(0,block);

  __dvd_stateready();
  return 1;
 }
 return 0;
}
