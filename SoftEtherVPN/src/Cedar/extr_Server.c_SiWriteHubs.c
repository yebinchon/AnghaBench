
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_11__ {int HubList; } ;
struct TYPE_10__ {int lock; int Name; int ref; } ;
struct TYPE_9__ {TYPE_3__* Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ HUB ;
typedef int FOLDER ;
typedef TYPE_3__ CEDAR ;


 int AddRef (int ) ;
 int * CfgCreateFolder (int *,int ) ;
 int Free (TYPE_2__**) ;
 size_t LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockList (int ) ;
 int ReleaseHub (TYPE_2__*) ;
 int SiWriteHubCfg (int *,TYPE_2__*) ;
 TYPE_2__** ToArray (int ) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;
 int YieldCpu () ;

void SiWriteHubs(FOLDER *f, SERVER *s)
{
 UINT i;
 FOLDER *hub_folder;
 CEDAR *c;
 UINT num;
 HUB **hubs;

 if (f == ((void*)0) || s == ((void*)0))
 {
  return;
 }
 c = s->Cedar;

 LockList(c->HubList);
 {
  hubs = ToArray(c->HubList);
  num = LIST_NUM(c->HubList);

  for (i = 0;i < num;i++)
  {
   AddRef(hubs[i]->ref);
  }
 }
 UnlockList(c->HubList);

 for (i = 0;i < num;i++)
 {
  HUB *h = hubs[i];

  Lock(h->lock);
  {
   hub_folder = CfgCreateFolder(f, h->Name);
   SiWriteHubCfg(hub_folder, h);
  }
  Unlock(h->lock);

  ReleaseHub(h);

  if ((i % 30) == 1)
  {
   YieldCpu();
  }
 }

 Free(hubs);
}
