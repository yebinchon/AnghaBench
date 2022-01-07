
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int * LocalBridgeList; } ;
typedef int LOCALBRIDGE ;
typedef TYPE_1__ CEDAR ;


 int Free (int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ReleaseList (int *) ;

void FreeLocalBridgeList(CEDAR *c)
{
 UINT i;

 if (c == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(c->LocalBridgeList);i++)
 {
  LOCALBRIDGE *br = LIST_DATA(c->LocalBridgeList, i);
  Free(br);
 }

 ReleaseList(c->LocalBridgeList);
 c->LocalBridgeList = ((void*)0);
}
