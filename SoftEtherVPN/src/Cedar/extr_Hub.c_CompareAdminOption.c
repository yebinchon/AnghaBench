
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Name; } ;
typedef TYPE_1__ ADMIN_OPTION ;


 int StrCmpi (int ,int ) ;

int CompareAdminOption(void *p1, void *p2)
{
 ADMIN_OPTION *a1, *a2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 a1 = *(ADMIN_OPTION **)p1;
 a2 = *(ADMIN_OPTION **)p2;
 if (a1 == ((void*)0) || a2 == ((void*)0))
 {
  return 0;
 }
 return StrCmpi(a1->Name, a2->Name);
}
