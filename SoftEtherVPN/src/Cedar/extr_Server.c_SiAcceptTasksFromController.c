
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_16__ {int HubList; } ;
struct TYPE_15__ {TYPE_1__* Server; } ;
struct TYPE_14__ {int ref; } ;
struct TYPE_13__ {TYPE_4__* Cedar; } ;
typedef int SOCK ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ HUB ;
typedef TYPE_3__ FARM_CONTROLLER ;
typedef TYPE_4__ CEDAR ;


 int AddRef (int ) ;
 int DelHub (TYPE_4__*,TYPE_2__*) ;
 int Free (TYPE_2__**) ;
 size_t LIST_NUM (int ) ;
 int LockList (int ) ;
 int ReleaseHub (TYPE_2__*) ;
 int SetHubOffline (TYPE_2__*) ;
 int SiAcceptTasksFromControllerMain (TYPE_3__*,int *) ;
 TYPE_2__** ToArray (int ) ;
 int UnlockList (int ) ;

void SiAcceptTasksFromController(FARM_CONTROLLER *f, SOCK *sock)
{
 UINT i;
 HUB **hubs;
 UINT num_hubs;
 CEDAR *c;
 SERVER *s;

 if (f == ((void*)0) || sock == ((void*)0))
 {
  return;
 }

 s = f->Server;
 c = s->Cedar;


 SiAcceptTasksFromControllerMain(f, sock);


 LockList(c->HubList);
 {
  hubs = ToArray(c->HubList);
  num_hubs = LIST_NUM(c->HubList);
  for (i = 0;i < num_hubs;i++)
  {
   AddRef(hubs[i]->ref);
  }
 }
 UnlockList(c->HubList);

 for (i = 0;i < num_hubs;i++)
 {
  SetHubOffline(hubs[i]);
  DelHub(c, hubs[i]);
  ReleaseHub(hubs[i]);
 }

 Free(hubs);
}
