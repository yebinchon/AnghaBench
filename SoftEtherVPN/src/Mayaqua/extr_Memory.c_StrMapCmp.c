
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Name; } ;
typedef TYPE_1__ STRMAP_ENTRY ;


 int StrCmpi (int ,int ) ;

int StrMapCmp(void *p1, void *p2)
{
 STRMAP_ENTRY *s1, *s2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 s1 = *(STRMAP_ENTRY **)p1;
 s2 = *(STRMAP_ENTRY **)p2;
 if (s1 == ((void*)0) || s2 == ((void*)0))
 {
  return 0;
 }
 return StrCmpi(s1->Name, s2->Name);
}
