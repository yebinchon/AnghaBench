
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lock; int ref; int Name; } ;
typedef TYPE_1__ USERGROUP ;
struct TYPE_7__ {int lock; int * GroupName; TYPE_1__* Group; } ;
typedef TYPE_2__ USER ;


 int AddRef (int ) ;
 int * CopyStr (int ) ;
 int Free (int *) ;
 int Lock (int ) ;
 int ReleaseGroup (TYPE_1__*) ;
 int Unlock (int ) ;

void JoinUserToGroup(USER *u, USERGROUP *g)
{

 if (u == ((void*)0))
 {
  return;
 }

 if (g != ((void*)0))
 {

  Lock(u->lock);
  {
   Lock(g->lock);
   {
    if (u->Group != ((void*)0))
    {


     ReleaseGroup(u->Group);
     u->Group = ((void*)0);
     Free(u->GroupName);
     u->GroupName = ((void*)0);
    }

    u->GroupName = CopyStr(g->Name);
    u->Group = g;
    AddRef(g->ref);
   }
   Unlock(g->lock);
  }
  Unlock(u->lock);
 }
 else
 {

  Lock(u->lock);
  {
   if (u->Group != ((void*)0))
   {

    ReleaseGroup(u->Group);
    u->Group = ((void*)0);
    Free(u->GroupName);
    u->GroupName = ((void*)0);
   }
  }
  Unlock(u->lock);
 }
}
