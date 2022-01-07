
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int HubList; } ;
typedef int HUB ;
typedef TYPE_1__ CEDAR ;


 scalar_t__ Delete (int ,int *) ;
 int LockHubList (TYPE_1__*) ;
 int ReleaseHub (int *) ;
 int UnlockHubList (TYPE_1__*) ;

void DelHubEx(CEDAR *c, HUB *h, bool no_lock)
{

 if (c == ((void*)0) || h == ((void*)0))
 {
  return;
 }

 if (no_lock == 0)
 {
  LockHubList(c);
 }

 if (Delete(c->HubList, h))
 {
  ReleaseHub(h);
 }

 if (no_lock == 0)
 {
  UnlockHubList(c);
 }
}
