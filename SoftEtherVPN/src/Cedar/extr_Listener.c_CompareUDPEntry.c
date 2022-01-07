
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ SessionKey32; } ;
typedef TYPE_1__ UDP_ENTRY ;



int CompareUDPEntry(void *p1, void *p2)
{
 UDP_ENTRY *e1, *e2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 e1 = *(UDP_ENTRY **)p1;
 e2 = *(UDP_ENTRY **)p2;
 if (e1 == ((void*)0) || e2 == ((void*)0))
 {
  return 0;
 }

 if (e1->SessionKey32 > e2->SessionKey32)
 {
  return 1;
 }
 else if (e1->SessionKey32 == e2->SessionKey32)
 {
  return 0;
 }
 else
 {
  return -1;
 }
}
