
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lock; int * Policy; int ref; } ;
typedef TYPE_1__ USERGROUP ;
struct TYPE_7__ {int lock; TYPE_1__* Group; int * Policy; } ;
typedef TYPE_2__ USER ;
typedef int POLICY ;
typedef int HUB ;


 TYPE_2__* AcGetUser (int *,char*) ;
 int AcLock (int *) ;
 int AcUnlock (int *) ;
 int AddRef (int ) ;
 int * ClonePolicy (int *) ;
 int Lock (int ) ;
 int ReleaseGroup (TYPE_1__*) ;
 int ReleaseUser (TYPE_2__*) ;
 int Unlock (int ) ;

POLICY *SamGetUserPolicy(HUB *h, char *username)
{
 POLICY *ret = ((void*)0);

 if (h == ((void*)0) || username == ((void*)0))
 {
  return ((void*)0);
 }

 AcLock(h);
 {
  USER *u;
  u = AcGetUser(h, username);
  if (u)
  {
   USERGROUP *g = ((void*)0);
   Lock(u->lock);
   {
    if (u->Policy != ((void*)0))
    {
     ret = ClonePolicy(u->Policy);
    }

    g = u->Group;

    if (g != ((void*)0))
    {
     AddRef(g->ref);
    }
   }
   Unlock(u->lock);

   ReleaseUser(u);
   u = ((void*)0);

   if (ret == ((void*)0))
   {
    if (g != ((void*)0))
    {
     Lock(g->lock);
     {
      ret = ClonePolicy(g->Policy);
     }
     Unlock(g->lock);
    }
   }

   if (g != ((void*)0))
   {
    ReleaseGroup(g);
   }
  }
 }
 AcUnlock(h);

 return ret;
}
