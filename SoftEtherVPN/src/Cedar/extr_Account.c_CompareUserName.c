
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Name; } ;
typedef TYPE_1__ USER ;


 int StrCmpi (int ,int ) ;

int CompareUserName(void *p1, void *p2)
{
 USER *u1, *u2;

 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 u1 = *(USER **)p1;
 u2 = *(USER **)p2;
 if (u1 == ((void*)0) || u2 == ((void*)0))
 {
  return 0;
 }

 return StrCmpi(u1->Name, u2->Name);
}
