
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Traffic; struct TYPE_4__* Policy; int AuthData; int AuthType; int * Group; struct TYPE_4__* GroupName; struct TYPE_4__* Note; struct TYPE_4__* RealName; struct TYPE_4__* Name; int lock; } ;
typedef TYPE_1__ USER ;


 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 int FreeAuthData (int ,int ) ;
 int FreeTraffic (int ) ;
 int ReleaseGroup (int *) ;

void CleanupUser(USER *u)
{

 if (u == ((void*)0))
 {
  return;
 }

 DeleteLock(u->lock);
 Free(u->Name);
 Free(u->RealName);
 Free(u->Note);
 Free(u->GroupName);
 if (u->Group != ((void*)0))
 {
  ReleaseGroup(u->Group);
 }


 FreeAuthData(u->AuthType, u->AuthData);

 if (u->Policy)
 {

  Free(u->Policy);
 }

 FreeTraffic(u->Traffic);

 Free(u);
}
