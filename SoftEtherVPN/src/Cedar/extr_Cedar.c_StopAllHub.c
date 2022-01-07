
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {int HubList; } ;
typedef int HUB ;
typedef TYPE_1__ CEDAR ;


 int DeleteAll (int ) ;
 int Free (int **) ;
 size_t LIST_NUM (int ) ;
 int LockHubList (TYPE_1__*) ;
 int ReleaseHub (int *) ;
 int StopHub (int *) ;
 int ** ToArray (int ) ;
 int UnlockHubList (TYPE_1__*) ;

void StopAllHub(CEDAR *c)
{
 HUB **hubs;
 UINT i, num;

 if (c == ((void*)0))
 {
  return;
 }

 LockHubList(c);
 {
  hubs = ToArray(c->HubList);
  num = LIST_NUM(c->HubList);
  DeleteAll(c->HubList);
 }
 UnlockHubList(c);

 for (i = 0;i < num;i++)
 {
  StopHub(hubs[i]);
  ReleaseHub(hubs[i]);
 }

 Free(hubs);
}
