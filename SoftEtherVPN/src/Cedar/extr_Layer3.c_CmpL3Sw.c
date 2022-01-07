
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Name; } ;
typedef TYPE_1__ L3SW ;


 int StrCmpi (int ,int ) ;

int CmpL3Sw(void *p1, void *p2)
{
 L3SW *s1, *s2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 s1 = *(L3SW **)p1;
 s2 = *(L3SW **)p2;
 if (s1 == ((void*)0) || s2 == ((void*)0))
 {
  return 0;
 }

 return StrCmpi(s1->Name, s2->Name);
}
