
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ Priority; scalar_t__ Deny; } ;
typedef TYPE_1__ AC ;



int CmpAc(void *p1, void *p2)
{
 AC *a1, *a2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 a1 = *(AC **)p1;
 a2 = *(AC **)p2;
 if (a1 == ((void*)0) || a2 == ((void*)0))
 {
  return 0;
 }
 if (a1->Priority > a2->Priority)
 {
  return 1;
 }
 else if (a1->Priority < a2->Priority)
 {
  return -1;
 }
 else if (a1->Deny > a2->Deny)
 {
  return 1;
 }
 else if (a1->Deny < a2->Deny)
 {
  return -1;
 }
 else
 {
  return 0;
 }
}
