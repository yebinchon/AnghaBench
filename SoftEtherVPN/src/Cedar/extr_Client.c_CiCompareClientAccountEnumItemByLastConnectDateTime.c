
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ LastConnectDateTime; } ;
typedef TYPE_1__ RPC_CLIENT_ENUM_ACCOUNT_ITEM ;



int CiCompareClientAccountEnumItemByLastConnectDateTime(void *p1, void *p2)
{
 RPC_CLIENT_ENUM_ACCOUNT_ITEM *a1, *a2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 a1 = *(RPC_CLIENT_ENUM_ACCOUNT_ITEM **)p1;
 a2 = *(RPC_CLIENT_ENUM_ACCOUNT_ITEM **)p2;
 if (a1 == ((void*)0) || a2 == ((void*)0))
 {
  return 0;
 }
 if (a1->LastConnectDateTime > a2->LastConnectDateTime)
 {
  return -1;
 }
 else if (a1->LastConnectDateTime < a2->LastConnectDateTime)
 {
  return 1;
 }

 return 0;
}
