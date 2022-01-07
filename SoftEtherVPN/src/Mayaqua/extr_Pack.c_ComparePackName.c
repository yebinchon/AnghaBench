
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ ELEMENT ;


 int StrCmpi (int ,int ) ;

int ComparePackName(void *p1, void *p2)
{
 ELEMENT *o1, *o2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 o1 = *(ELEMENT **)p1;
 o2 = *(ELEMENT **)p2;
 if (o1 == ((void*)0) || o2 == ((void*)0))
 {
  return 0;
 }

 return StrCmpi(o1->name, o2->name);
}
