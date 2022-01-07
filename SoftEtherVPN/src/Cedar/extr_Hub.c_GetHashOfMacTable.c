
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_2__ {scalar_t__ VlanId; scalar_t__* MacAddress; } ;
typedef TYPE_1__ MAC_TABLE_ENTRY ;



UINT GetHashOfMacTable(void *p)
{
 UINT v;
 MAC_TABLE_ENTRY *e = p;

 if (e == ((void*)0))
 {
  return 0;
 }

 v = e->MacAddress[0] + e->MacAddress[1] + e->MacAddress[2] +
  e->MacAddress[3] + e->MacAddress[4] + e->MacAddress[5] +
  e->VlanId;

 return v;
}
