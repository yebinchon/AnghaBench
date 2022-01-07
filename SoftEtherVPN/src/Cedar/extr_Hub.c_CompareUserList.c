
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Filename; } ;
typedef TYPE_1__ USERLIST ;


 int StrCmpi (int ,int ) ;

int CompareUserList(void *p1, void *p2)
{
 USERLIST *u1, *u2;

 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 u1 = *(USERLIST **)p1;
 u2 = *(USERLIST **)p2;
 if (u1 == ((void*)0) || u2 == ((void*)0))
 {
  return 0;
 }

 return StrCmpi(u1->Filename, u2->Filename);
}
