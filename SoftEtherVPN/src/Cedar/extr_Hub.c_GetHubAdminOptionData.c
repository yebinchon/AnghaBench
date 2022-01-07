
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t Value; int Name; } ;
struct TYPE_4__ {size_t NumItem; TYPE_2__* Items; } ;
typedef TYPE_1__ RPC_ADMIN_OPTION ;
typedef TYPE_2__ ADMIN_OPTION ;


 size_t INFINITE ;
 scalar_t__ StrCmpi (int ,char*) ;

UINT GetHubAdminOptionData(RPC_ADMIN_OPTION *ao, char *name)
{
 UINT i;

 if (ao == ((void*)0) || name == ((void*)0))
 {
  return INFINITE;
 }

 for (i = 0;i < ao->NumItem;i++)
 {
  ADMIN_OPTION *a = &ao->Items[i];

  if (StrCmpi(a->Name, name) == 0)
  {
   return a->Value;
  }
 }

 return INFINITE;
}
