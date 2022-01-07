
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* cb ) (int,TYPE_1__*) ;} ;
typedef TYPE_1__ dvdcmdblk ;


 int DVD_LowSpinUpDrive (int ) ;
 int TRUE ;
 int __dvd_clearwaitingqueue () ;
 int __dvd_currcmd ;
 TYPE_1__ __dvd_dummycmdblk ;
 TYPE_1__* __dvd_executing ;
 int __dvd_extensionsenabled ;
 int __dvd_statecoverclosed_spinupcb ;
 int __dvd_stateready () ;
 int stub1 (int,TYPE_1__*) ;

void __dvd_statecoverclosed()
{
 dvdcmdblk *blk;
 if(__dvd_currcmd==0x0004 || __dvd_currcmd==0x0005
  || __dvd_currcmd==0x000d || __dvd_currcmd==0x000f
  || __dvd_currcmd==0x0010) {
  __dvd_clearwaitingqueue();
  blk = __dvd_executing;
  __dvd_executing = &__dvd_dummycmdblk;
  if(blk->cb) blk->cb(-4,blk);
  __dvd_stateready();
 } else {
  __dvd_extensionsenabled = TRUE;
  DVD_LowSpinUpDrive(__dvd_statecoverclosed_spinupcb);
 }
}
