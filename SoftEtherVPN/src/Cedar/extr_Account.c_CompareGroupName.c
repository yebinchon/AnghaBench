
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Name; } ;
typedef TYPE_1__ USERGROUP ;


 int StrCmpi (int ,int ) ;

int CompareGroupName(void *p1, void *p2)
{
 USERGROUP *g1, *g2;

 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 g1 = *(USERGROUP **)p1;
 g2 = *(USERGROUP **)p2;
 if (g1 == ((void*)0) || g2 == ((void*)0))
 {
  return 0;
 }

 return StrCmpi(g1->Name, g2->Name);
}
