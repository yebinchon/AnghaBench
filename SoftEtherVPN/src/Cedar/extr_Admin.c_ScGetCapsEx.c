
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int info ;
typedef int b ;
typedef int UINT ;
struct TYPE_14__ {int Value; } ;
struct TYPE_13__ {int ServerBuildInt; scalar_t__ ServerType; int IsBridgeSupportedOs; int IsWinPcapNeeded; int ServerProductName; } ;
struct TYPE_12__ {int NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef TYPE_2__ RPC_SERVER_INFO ;
typedef TYPE_2__ RPC_BRIDGE_SUPPORT ;
typedef int RPC ;
typedef int CAPSLIST ;
typedef TYPE_4__ CAPS ;


 int AddCapsBool (int *,char*,int) ;
 int AddCapsInt (int *,char*,int) ;
 scalar_t__ ERR_NO_ERROR ;
 int Free (int *) ;
 int FreeRpcServerInfo (TYPE_2__*) ;
 int FreeToken (TYPE_1__*) ;
 TYPE_4__* GetCaps (int *,char*) ;
 TYPE_1__* GetTableNameStartWith (char*) ;
 scalar_t__ INFINITE ;
 int * NewCapsList () ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 scalar_t__ SERVER_TYPE_STANDALONE ;
 scalar_t__ ScGetBridgeSupport (int *,TYPE_2__*) ;
 scalar_t__ ScGetCaps (int *,int *) ;
 int ScGetServerInfo (int *,TYPE_2__*) ;
 scalar_t__ SearchStrEx (int ,char*,int ,int) ;
 int Zero (TYPE_2__*,int) ;
 int * ZeroMalloc (int) ;

CAPSLIST *ScGetCapsEx(RPC *rpc)
{
 RPC_SERVER_INFO info;
 CAPSLIST *t;
 bool is_bridge = 0;

 if (rpc == ((void*)0))
 {
  return ((void*)0);
 }

 Zero(&info, sizeof(info));
 ScGetServerInfo(rpc, &info);

 t = ZeroMalloc(sizeof(CAPSLIST));


 if (ScGetCaps(rpc, t) != ERR_NO_ERROR)
 {
  UINT build;

  Free(t);
  t = NewCapsList();


  build = info.ServerBuildInt;

  is_bridge = (SearchStrEx(info.ServerProductName, "bridge", 0, 0) == INFINITE) ? 0 : 1;

  AddCapsInt(t, "i_max_packet_size", 1514);

  if (is_bridge == 0)
  {
   AddCapsInt(t, "i_max_hubs", 4096);
   AddCapsInt(t, "i_max_sessions", 4096);

   if (info.ServerType != SERVER_TYPE_FARM_MEMBER)
   {
    AddCapsInt(t, "i_max_users_per_hub", 10000);
    AddCapsInt(t, "i_max_groups_per_hub", 10000);
    AddCapsInt(t, "i_max_access_lists", 4096);
   }
   else
   {
    AddCapsInt(t, "i_max_users_per_hub", 0);
    AddCapsInt(t, "i_max_groups_per_hub", 0);
    AddCapsInt(t, "i_max_access_lists", 0);
   }
  }
  else
  {
   AddCapsInt(t, "i_max_hubs", 0);
   AddCapsInt(t, "i_max_sessions", 0);
   AddCapsInt(t, "i_max_users_per_hub", 0);
   AddCapsInt(t, "i_max_groups_per_hub", 0);
   AddCapsInt(t, "i_max_access_lists", 0);
  }

  AddCapsInt(t, "i_max_mac_tables", 10000);
  AddCapsInt(t, "i_max_ip_tables", 10000);

  if (info.ServerType == SERVER_TYPE_STANDALONE)
  {
   AddCapsBool(t, "b_support_securenat", (build >= 3600) ? 1 : 0);
   AddCapsInt(t, "i_max_secnat_tables", 4096);
  }
  else
  {
   AddCapsBool(t, "b_support_securenat", 0);
   AddCapsInt(t, "i_max_secnat_tables", 0);
  }

  if (is_bridge)
  {
   AddCapsBool(t, "b_bridge", 1);
  }
  else if (info.ServerType == SERVER_TYPE_STANDALONE)
  {
   AddCapsBool(t, "b_standalone", 1);
  }
  else if (info.ServerType == SERVER_TYPE_FARM_CONTROLLER)
  {
   AddCapsBool(t, "b_cluster_controller", 1);
  }
  else
  {
   AddCapsBool(t, "b_cluster_member", 1);
  }

  AddCapsBool(t, "b_support_config_hub", info.ServerType != SERVER_TYPE_FARM_MEMBER &&
   is_bridge == 0);

  AddCapsBool(t, "b_vpn_client_connect", is_bridge == 0 ? 1 : 0);

  AddCapsBool(t, "b_support_radius", info.ServerType != SERVER_TYPE_FARM_MEMBER &&
   is_bridge == 0);

  if (build >= 3600)
  {
   RPC_BRIDGE_SUPPORT b;
   Zero(&b, sizeof(b));
   if (ScGetBridgeSupport(rpc, &b) == ERR_NO_ERROR)
   {
    AddCapsBool(t, "b_local_bridge", b.IsBridgeSupportedOs);
    AddCapsBool(t, "b_must_install_pcap", b.IsWinPcapNeeded);
   }
   else
   {
    AddCapsBool(t, "b_local_bridge", 0);
    AddCapsBool(t, "b_must_install_pcap", 0);
   }
  }
  else
  {
   AddCapsBool(t, "b_local_bridge", 0);
   AddCapsBool(t, "b_must_install_pcap", 0);
  }

  AddCapsBool(t, "b_tap_supported", 0);

  if (info.ServerType == SERVER_TYPE_STANDALONE)
  {
   AddCapsBool(t, "b_support_cascade", 1);
  }
  else
  {
   AddCapsBool(t, "b_support_cascade", 0);
  }

  AddCapsBool(t, "b_support_cascade_cert", 0);
  AddCapsBool(t, "b_support_config_log", info.ServerType != SERVER_TYPE_FARM_MEMBER);
  AddCapsBool(t, "b_support_autodelete", 0);
 }
 else
 {

  if (info.ServerBuildInt <= 4350)
  {
   if (is_bridge == 0)
   {

    CAPS *caps = GetCaps(t, "b_support_cluster");
    if (caps == ((void*)0))
    {
     AddCapsBool(t, "b_support_cluster", 1);
    }
    else
    {
     caps->Value = 1;
    }
   }
  }
 }

 if (1)
 {
  TOKEN_LIST *names;


  names = GetTableNameStartWith("CT_b_");
  if (names != ((void*)0))
  {
   UINT i;
   for (i = 0;i < names->NumTokens;i++)
   {
    char *name = names->Token[i] + 3;

    if (GetCaps(t, name) == ((void*)0))
    {
     AddCapsBool(t, name, 0);
    }
   }

   FreeToken(names);
  }
 }

 FreeRpcServerInfo(&info);

 return t;
}
