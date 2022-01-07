
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_7__ {int Server; } ;
struct TYPE_6__ {scalar_t__ ServerType; int ControllerOnly; int Weight; int MemberPassword; int ControllerPort; int ControllerName; int Ports; int NumPort; int PublicIp; } ;
typedef TYPE_1__ RPC_FARM ;
typedef TYPE_2__ ADMIN ;


 int ALog (TYPE_2__*,int *,char*) ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int GetServerCapsInt (int ,char*) ;
 int IncrementServerConfigRevision (int ) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int SERVER_ADMIN_ONLY ;
 scalar_t__ SERVER_TYPE_STANDALONE ;
 int SiSetServerType (int ,scalar_t__,int ,int ,int ,int ,int ,int ,int ,int ) ;

UINT StSetFarmSetting(ADMIN *a, RPC_FARM *t)
{
 bool cluster_allowed = 0;

 SERVER_ADMIN_ONLY;
 NO_SUPPORT_FOR_BRIDGE;


 cluster_allowed = GetServerCapsInt(a->Server, "b_support_cluster");

 if (t->ServerType != SERVER_TYPE_STANDALONE && cluster_allowed == 0)
 {

  return ERR_NOT_SUPPORTED;
 }

 ALog(a, ((void*)0), "LA_SET_FARM_SETTING");

 IncrementServerConfigRevision(a->Server);

 SiSetServerType(a->Server, t->ServerType, t->PublicIp, t->NumPort, t->Ports,
  t->ControllerName, t->ControllerPort, t->MemberPassword, t->Weight, t->ControllerOnly);

 return ERR_NO_ERROR;
}
