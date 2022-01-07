
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int FileName; } ;
typedef TYPE_1__ HC ;


 int StrCmpi (int ,int ) ;

int CompareHamcore(void *p1, void *p2)
{
 HC *c1, *c2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 c1 = *(HC **)p1;
 c2 = *(HC **)p2;
 if (c1 == ((void*)0) || c2 == ((void*)0))
 {
  return 0;
 }
 return StrCmpi(c1->FileName, c2->FileName);
}
