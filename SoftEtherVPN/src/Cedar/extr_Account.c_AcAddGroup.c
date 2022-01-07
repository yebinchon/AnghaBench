
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int ref; int Name; } ;
typedef TYPE_2__ USERGROUP ;
struct TYPE_11__ {TYPE_1__* HubDb; } ;
struct TYPE_9__ {int GroupList; } ;
typedef TYPE_3__ HUB ;


 int AcIsGroup (TYPE_3__*,int ) ;
 int AddRef (int ) ;
 int Insert (int ,TYPE_2__*) ;
 scalar_t__ LIST_NUM (int ) ;
 scalar_t__ MAX_GROUPS ;
 scalar_t__ NO_ACCOUNT_DB (TYPE_3__*) ;

bool AcAddGroup(HUB *h, USERGROUP *g)
{

 if (h == ((void*)0) || g == ((void*)0) || NO_ACCOUNT_DB(h))
 {
  return 0;
 }

 if (LIST_NUM(h->HubDb->GroupList) >= MAX_GROUPS)
 {
  return 0;
 }

 if (AcIsGroup(h, g->Name) != 0)
 {
  return 0;
 }

 Insert(h->HubDb->GroupList, g);
 AddRef(g->ref);

 return 1;
}
