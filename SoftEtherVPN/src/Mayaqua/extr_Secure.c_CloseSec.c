
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int lock; struct TYPE_8__* SlotIdList; } ;
typedef TYPE_1__ SECURE ;


 int CloseSecSession (TYPE_1__*) ;
 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 int FreeSecInfo (TYPE_1__*) ;
 int FreeSecModule (TYPE_1__*) ;
 int LogoutSec (TYPE_1__*) ;

void CloseSec(SECURE *sec)
{

 if (sec == ((void*)0))
 {
  return;
 }


 LogoutSec(sec);


 CloseSecSession(sec);


 FreeSecInfo(sec);


 if (sec->SlotIdList != ((void*)0))
 {
  Free(sec->SlotIdList);
  sec->SlotIdList = ((void*)0);
 }


 FreeSecModule(sec);


 DeleteLock(sec->lock);
 Free(sec);
}
