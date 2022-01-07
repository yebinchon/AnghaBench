
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int state; int cmd; int (* cb ) (int,TYPE_1__*) ;} ;
typedef TYPE_1__ dvdcmdblk ;


 int __dvd_cancellasterror ;
 int __dvd_checkwaitingqueue () ;
 int __dvd_currcmd ;
 TYPE_1__ __dvd_dummycmdblk ;
 TYPE_1__* __dvd_executing ;
 scalar_t__ __dvd_fatalerror ;
 TYPE_1__* __dvd_popwaitingqueue () ;
 int __dvd_resumefromhere ;
 int __dvd_statebusy (TYPE_1__*) ;
 int __dvd_statecoverclosed () ;
 int __dvd_stateerror (int ) ;
 int __dvd_statemotorstopped () ;
 int stub1 (int,TYPE_1__*) ;

void __dvd_stateready()
{
 dvdcmdblk *block;
 if(!__dvd_checkwaitingqueue()) {
  __dvd_executing = ((void*)0);
  return;
 }

 __dvd_executing = __dvd_popwaitingqueue();

 if(__dvd_fatalerror) {
  __dvd_executing->state = -1;
  block = __dvd_executing;
  __dvd_executing = &__dvd_dummycmdblk;
  if(block->cb) block->cb(-1,block);
  __dvd_stateready();
  return;
 }

 __dvd_currcmd = __dvd_executing->cmd;

 if(__dvd_resumefromhere) {
  if(__dvd_resumefromhere<=7) {
   switch(__dvd_resumefromhere) {
    case 1:
     __dvd_executing->state = 6;
     __dvd_statemotorstopped();
     break;
    case 2:
     __dvd_executing->state = 11;
     __dvd_statemotorstopped();
     break;
    case 3:
     __dvd_executing->state = 4;
     __dvd_statemotorstopped();
     break;
    case 4:
     __dvd_executing->state = 5;
     __dvd_statemotorstopped();
     break;
    case 5:
     __dvd_executing->state = -1;
     __dvd_stateerror(__dvd_cancellasterror);
     break;
    case 6:
     __dvd_executing->state = 3;
     __dvd_statecoverclosed();
     break;
    case 7:
     __dvd_executing->state = 7;
     __dvd_statemotorstopped();
     break;
    default:
     break;

   }
  }
  __dvd_resumefromhere = 0;
  return;
 }
 __dvd_executing->state = 1;
 __dvd_statebusy(__dvd_executing);
}
