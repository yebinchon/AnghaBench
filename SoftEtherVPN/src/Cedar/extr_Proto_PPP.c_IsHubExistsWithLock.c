
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int HubList; } ;
typedef TYPE_1__ CEDAR ;


 int IsHub (TYPE_1__*,char*) ;
 int LockList (int ) ;
 int UnlockList (int ) ;

bool IsHubExistsWithLock(CEDAR *cedar, char *hubname)
{
 bool ret = 0;

 if (cedar == ((void*)0) || hubname == ((void*)0))
 {
  return 0;
 }

 LockList(cedar->HubList);
 {
  ret = IsHub(cedar, hubname);
 }
 UnlockList(cedar->HubList);

 return ret;
}
