
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ IpAddress; } ;
typedef TYPE_1__ L3ARPENTRY ;



int CmpL3ArpEntry(void *p1, void *p2)
{
 L3ARPENTRY *e1, *e2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 e1 = *(L3ARPENTRY **)p1;
 e2 = *(L3ARPENTRY **)p2;
 if (e1 == ((void*)0) || e2 == ((void*)0))
 {
  return 0;
 }
 if (e1->IpAddress > e2->IpAddress)
 {
  return 1;
 }
 else if (e1->IpAddress < e2->IpAddress)
 {
  return -1;
 }
 else
 {
  return 0;
 }
}
