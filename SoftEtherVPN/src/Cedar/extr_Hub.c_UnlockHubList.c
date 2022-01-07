
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int HubList; } ;
typedef TYPE_1__ CEDAR ;


 int UnlockList (int ) ;

void UnlockHubList(CEDAR *cedar)
{

 if (cedar == ((void*)0))
 {
  return;
 }

 UnlockList(cedar->HubList);
}
