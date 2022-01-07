
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_15__ {int Value; int Name; } ;
struct TYPE_14__ {TYPE_1__* Server; } ;
struct TYPE_13__ {int Name; int Descrption; int Value; } ;
struct TYPE_12__ {int NumItem; TYPE_3__* Items; } ;
struct TYPE_11__ {scalar_t__ ServerType; } ;
typedef TYPE_2__ RPC_ADMIN_OPTION ;
typedef TYPE_3__ ADMIN_OPTION ;
typedef TYPE_4__ ADMIN ;


 size_t ERR_NOT_SUPPORTED ;
 size_t ERR_NO_ERROR ;
 int FreeRpcAdminOption (TYPE_2__*) ;
 int GetHubAdminOptionHelpString (int ) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int StrCpy (int ,int,int ) ;
 int UniStrCpy (int ,int,int ) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_3__* ZeroMalloc (int) ;
 TYPE_5__* admin_options ;
 int num_admin_options ;

UINT StGetDefaultHubAdminOptions(ADMIN *a, RPC_ADMIN_OPTION *t)
{
 UINT i;

 NO_SUPPORT_FOR_BRIDGE;
 if (a->Server->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_SUPPORTED;
 }

 FreeRpcAdminOption(t);
 Zero(t, sizeof(RPC_ADMIN_OPTION));

 t->NumItem = num_admin_options;
 t->Items = ZeroMalloc(sizeof(ADMIN_OPTION) * t->NumItem);

 for (i = 0;i < t->NumItem;i++)
 {
  ADMIN_OPTION *a = &t->Items[i];

  StrCpy(a->Name, sizeof(a->Name), admin_options[i].Name);
  a->Value = admin_options[i].Value;
  UniStrCpy(a->Descrption, sizeof(a->Descrption), GetHubAdminOptionHelpString(a->Name));
 }

 return ERR_NO_ERROR;
}
