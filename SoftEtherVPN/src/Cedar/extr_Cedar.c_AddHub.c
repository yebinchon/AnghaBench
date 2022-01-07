
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int HubList; } ;
struct TYPE_9__ {int ref; int Name; } ;
typedef TYPE_1__ HUB ;
typedef TYPE_2__ CEDAR ;


 int AddRef (int ) ;
 int Insert (int ,TYPE_1__*) ;
 scalar_t__ IsHub (TYPE_2__*,int ) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockHubList (TYPE_2__*) ;
 scalar_t__ MAX_HUBS ;
 int UnlockHubList (TYPE_2__*) ;

void AddHub(CEDAR *c, HUB *h)
{

 if (c == ((void*)0) || h == ((void*)0))
 {
  return;
 }

 LockHubList(c);
 {
  if (IsHub(c, h->Name))
  {

   UnlockHubList(c);
   return;
  }


  Insert(c->HubList, h);
  AddRef(h->ref);
 }
 UnlockHubList(c);
}
