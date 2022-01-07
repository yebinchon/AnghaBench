
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int Value; int Name; } ;
typedef TYPE_1__ ADMIN_OPTION ;


 int StrCpy (int ,int,char*) ;
 TYPE_1__* ZeroMalloc (int) ;

ADMIN_OPTION *NewAdminOption(char *name, UINT value)
{
 ADMIN_OPTION *a;

 if (name == ((void*)0))
 {
  return ((void*)0);
 }

 a = ZeroMalloc(sizeof(ADMIN_OPTION));
 StrCpy(a->Name, sizeof(a->Name), name);
 a->Value = value;

 return a;
}
