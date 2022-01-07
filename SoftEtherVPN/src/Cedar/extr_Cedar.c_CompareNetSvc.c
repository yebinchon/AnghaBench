
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ Port; scalar_t__ Udp; } ;
typedef TYPE_1__ NETSVC ;



int CompareNetSvc(void *p1, void *p2)
{
 NETSVC *n1, *n2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 n1 = *(NETSVC **)p1;
 n2 = *(NETSVC **)p2;
 if (n1 == ((void*)0) || n2 == ((void*)0))
 {
  return 0;
 }
 if (n1->Port > n2->Port)
 {
  return 1;
 }
 else if (n1->Port < n2->Port)
 {
  return -1;
 }
 else if (n1->Udp > n2->Udp)
 {
  return 1;
 }
 else if (n1->Udp < n2->Udp)
 {
  return -1;
 }
 return 0;
}
