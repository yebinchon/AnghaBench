
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ IpAddress; } ;
typedef TYPE_1__ L3ARPWAIT ;



int CmpL3ArpWaitTable(void *p1, void *p2)
{
 L3ARPWAIT *w1, *w2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 w1 = *(L3ARPWAIT **)p1;
 w2 = *(L3ARPWAIT **)p2;
 if (w1 == ((void*)0) || w2 == ((void*)0))
 {
  return 0;
 }
 if (w1->IpAddress > w2->IpAddress)
 {
  return 1;
 }
 else if (w1->IpAddress < w2->IpAddress)
 {
  return -1;
 }
 else
 {
  return 0;
 }
}
