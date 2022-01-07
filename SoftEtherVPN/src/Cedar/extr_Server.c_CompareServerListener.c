
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ Port; } ;
typedef TYPE_1__ SERVER_LISTENER ;



int CompareServerListener(void *p1, void *p2)
{
 SERVER_LISTENER *s1, *s2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 s1 = *(SERVER_LISTENER **)p1;
 s2 = *(SERVER_LISTENER **)p2;
 if (s1 == ((void*)0) || s2 == ((void*)0))
 {
  return 0;
 }

 if (s1->Port > s2->Port)
 {
  return 1;
 }
 else if (s1->Port < s2->Port)
 {
  return -1;
 }
 else
 {
  return 0;
 }
}
