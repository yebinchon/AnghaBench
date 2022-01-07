
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ NetworkAddress; scalar_t__ SubnetMask; scalar_t__ GatewayAddress; scalar_t__ Metric; } ;
typedef TYPE_1__ L3TABLE ;



int CmpL3Table(void *p1, void *p2)
{
 L3TABLE *t1, *t2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 t1 = *(L3TABLE **)p1;
 t2 = *(L3TABLE **)p2;
 if (t1 == ((void*)0) || t2 == ((void*)0))
 {
  return 0;
 }

 if (t1->NetworkAddress > t2->NetworkAddress)
 {
  return 1;
 }
 else if (t1->NetworkAddress < t2->NetworkAddress)
 {
  return -1;
 }
 else if (t1->SubnetMask > t2->SubnetMask)
 {
  return 1;
 }
 else if (t1->SubnetMask < t2->SubnetMask)
 {
  return -1;
 }
 else if (t1->GatewayAddress > t2->GatewayAddress)
 {
  return 1;
 }
 else if (t1->GatewayAddress < t2->GatewayAddress)
 {
  return -1;
 }
 else if (t1->Metric > t2->Metric)
 {
  return 1;
 }
 else if (t1->Metric < t2->Metric)
 {
  return -1;
 }
 else
 {
  return 0;
 }
}
