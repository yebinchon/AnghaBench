
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {int NetSvcList; } ;
struct TYPE_6__ {struct TYPE_6__* Name; } ;
typedef TYPE_1__ NETSVC ;
typedef TYPE_2__ CEDAR ;


 int Free (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseList (int ) ;

void FreeNetSvcList(CEDAR *cedar)
{
 UINT i;

 if (cedar == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(cedar->NetSvcList);i++)
 {
  NETSVC *n = LIST_DATA(cedar->NetSvcList, i);
  Free(n->Name);
  Free(n);
 }
 ReleaseList(cedar->NetSvcList);
}
