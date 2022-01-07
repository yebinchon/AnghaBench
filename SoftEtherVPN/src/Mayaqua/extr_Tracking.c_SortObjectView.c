
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ Id; } ;
typedef TYPE_1__ TRACKING_OBJECT ;



int SortObjectView(void *p1, void *p2)
{
 TRACKING_OBJECT *o1, *o2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 o1 = *(TRACKING_OBJECT **)p1;
 o2 = *(TRACKING_OBJECT **)p2;
 if (o1 == ((void*)0) || o2 == ((void*)0))
 {
  return 0;
 }

 if (o1->Id > o2->Id)
 {
  return 1;
 }
 else if (o1->Id == o2->Id)
 {
  return 0;
 }
 return -1;
}
