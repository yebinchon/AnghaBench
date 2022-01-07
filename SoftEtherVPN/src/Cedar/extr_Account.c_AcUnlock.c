
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* HubDb; } ;
struct TYPE_5__ {int GroupList; int UserList; } ;
typedef TYPE_2__ HUB ;


 scalar_t__ NO_ACCOUNT_DB (TYPE_2__*) ;
 int UnlockList (int ) ;

void AcUnlock(HUB *h)
{

 if (h == ((void*)0))
 {
  return;
 }
 if (NO_ACCOUNT_DB(h))
 {
  return;
 }


 UnlockList(h->HubDb->UserList);
 UnlockList(h->HubDb->GroupList);
}
