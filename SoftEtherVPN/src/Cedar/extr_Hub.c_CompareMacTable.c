
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ VlanId; int MacAddress; } ;
typedef TYPE_1__ MAC_TABLE_ENTRY ;


 int memcmp (int ,int ,int) ;

int CompareMacTable(void *p1, void *p2)
{
 int r;
 MAC_TABLE_ENTRY *e1, *e2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 e1 = *(MAC_TABLE_ENTRY **)p1;
 e2 = *(MAC_TABLE_ENTRY **)p2;
 if (e1 == ((void*)0) || e2 == ((void*)0))
 {
  return 0;
 }
 r = memcmp(e1->MacAddress, e2->MacAddress, 6);
 if (r != 0)
 {
  return r;
 }
 if (e1->VlanId > e2->VlanId)
 {
  return 1;
 }
 else if (e1->VlanId < e2->VlanId)
 {
  return -1;
 }
 return 0;
}
