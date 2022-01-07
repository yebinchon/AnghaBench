
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int HubList; } ;
struct TYPE_9__ {char* Name; int ref; } ;
typedef TYPE_1__ HUB ;
typedef TYPE_2__ CEDAR ;


 int AddRef (int ) ;
 int LockHubList (TYPE_2__*) ;
 TYPE_1__* Search (int ,TYPE_1__*) ;
 int UnlockHubList (TYPE_2__*) ;

HUB *GetHub(CEDAR *cedar, char *name)
{
 HUB *h, t;

 if (cedar == ((void*)0) || name == ((void*)0))
 {
  return ((void*)0);
 }

 LockHubList(cedar);

 t.Name = name;
 h = Search(cedar->HubList, &t);
 if (h == ((void*)0))
 {
  UnlockHubList(cedar);
  return ((void*)0);
 }

 AddRef(h->ref);

 UnlockHubList(cedar);

 return h;
}
