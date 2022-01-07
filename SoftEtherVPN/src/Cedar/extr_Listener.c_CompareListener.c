
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ Protocol; scalar_t__ Port; } ;
typedef TYPE_1__ LISTENER ;



int CompareListener(void *p1, void *p2)
{
 LISTENER *r1, *r2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 r1 = *(LISTENER **)p1;
 r2 = *(LISTENER **)p2;
 if (r1 == ((void*)0) || r2 == ((void*)0))
 {
  return 0;
 }

 if (r1->Protocol > r2->Protocol)
 {
  return 1;
 }
 else if (r1->Protocol < r2->Protocol)
 {
  return -1;
 }
 else if (r1->Port > r2->Port)
 {
  return 1;
 }
 else if (r1->Port < r2->Port)
 {
  return -1;
 }
 else
 {
  return 0;
 }
}
