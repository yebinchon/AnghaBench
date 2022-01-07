
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int USERGROUP ;
struct TYPE_9__ {int lock; int * Group; } ;
typedef TYPE_2__ USER ;
typedef scalar_t__ UINT ;
struct TYPE_10__ {TYPE_1__* HubDb; } ;
struct TYPE_8__ {int UserList; int GroupList; } ;
typedef TYPE_3__ HUB ;


 int * AcGetGroup (TYPE_3__*,char*) ;
 scalar_t__ Delete (int ,int *) ;
 int JoinUserToGroup (TYPE_2__*,int *) ;
 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int Lock (int ) ;
 int ReleaseGroup (int *) ;
 int Unlock (int ) ;

bool AcDeleteGroup(HUB *h, char *name)
{
 USERGROUP *g;
 UINT i;

 if (h == ((void*)0) || name == ((void*)0))
 {
  return 0;
 }

 g = AcGetGroup(h, name);
 if (g == ((void*)0))
 {
  return 0;
 }

 if (Delete(h->HubDb->GroupList, g))
 {
  ReleaseGroup(g);
 }

 for (i = 0;i < LIST_NUM(h->HubDb->UserList);i++)
 {
  USER *u = LIST_DATA(h->HubDb->UserList, i);
  Lock(u->lock);
  {
   if (u->Group == g)
   {
    JoinUserToGroup(u, ((void*)0));
   }
  }
  Unlock(u->lock);
 }

 ReleaseGroup(g);

 return 1;
}
