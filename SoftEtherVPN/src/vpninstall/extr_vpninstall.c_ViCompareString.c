
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ Id; } ;
typedef TYPE_1__ VI_STRING ;



int ViCompareString(void *p1, void *p2)
{
 VI_STRING *s1, *s2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }

 s1 = *(VI_STRING **)p1;
 s2 = *(VI_STRING **)p2;

 if (s1 == ((void*)0) || s2 == ((void*)0))
 {
  return 0;
 }

 if (s1->Id > s2->Id)
 {
  return 1;
 }
 else if (s1->Id < s2->Id)
 {
  return -1;
 }
 return 0;
}
