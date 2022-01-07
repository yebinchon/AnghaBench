
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Name; } ;
typedef TYPE_1__ CAPS ;


 int StrCmpi (int ,int ) ;

int CompareCaps(void *p1, void *p2)
{
 CAPS *c1, *c2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 c1 = *(CAPS **)p1;
 c2 = *(CAPS **)p2;
 if (c1 == ((void*)0) || c2 == ((void*)0))
 {
  return 0;
 }

 return StrCmpi(c1->Name, c2->Name);
}
