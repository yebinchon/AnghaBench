
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int * AccessList; } ;
typedef TYPE_1__ HUB ;
typedef int ACCESS ;


 int Free (int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ReleaseList (int *) ;

void FreeAccessList(HUB *hub)
{
 UINT i;

 if (hub == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(hub->AccessList);i++)
 {
  ACCESS *a = LIST_DATA(hub->AccessList, i);
  Free(a);
 }

 ReleaseList(hub->AccessList);
 hub->AccessList = ((void*)0);
}
