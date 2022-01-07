
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_9__ {scalar_t__ OsType; } ;
struct TYPE_8__ {int Bridge; scalar_t__ Beta; } ;
struct TYPE_7__ {scalar_t__ ServerType; int IsInVm; TYPE_3__* Cedar; int * DDnsClient; } ;
typedef TYPE_1__ SERVER ;
typedef int CAPSLIST ;


 int AddCapsBool (int *,char*,int) ;
 int AddCapsInt (int *,char*,scalar_t__) ;
 scalar_t__ EthIsInterfaceDescriptionSupportedUnix () ;
 int GET_KETA (int ,int) ;
 TYPE_6__* GetOsInfo () ;
 int GetOsType () ;
 scalar_t__ INFINITE ;
 int InitCapsList (int *) ;
 int IsAesNiSupported () ;
 int IsBridgeSupported () ;
 int IsEthSupported () ;
 scalar_t__ IsNt () ;
 scalar_t__ MAX_ACCESSLISTS ;
 scalar_t__ MAX_GROUPS ;
 scalar_t__ MAX_IP_TABLES ;
 scalar_t__ MAX_MAC_TABLES ;
 scalar_t__ MAX_NUM_L3_IF ;
 scalar_t__ MAX_NUM_L3_SWITCH ;
 scalar_t__ MAX_NUM_L3_TABLE ;
 scalar_t__ MAX_PACKET_SIZE ;
 scalar_t__ MAX_USERS ;
 scalar_t__ NAT_MAX_SESSIONS ;
 scalar_t__ const OSTYPE_BSD ;
 scalar_t__ const OSTYPE_LINUX ;
 scalar_t__ OSTYPE_WINDOWS_2000_PROFESSIONAL ;
 scalar_t__ OS_IS_WINDOWS (scalar_t__) ;
 scalar_t__ OS_IS_WINDOWS_NT (int ) ;
 scalar_t__ SERVER_MAX_SESSIONS_FOR_CARRIER_EDITION ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 scalar_t__ SERVER_TYPE_STANDALONE ;
 int SiIsAzureSupported (TYPE_1__*) ;
 int SiIsEnterpriseFunctionsRestrictedOnOpenSource (TYPE_3__*) ;
 int UpdateGlobalServerFlags (TYPE_1__*,int *) ;
 int Win32IsUsingSeLow () ;

void GetServerCapsMain(SERVER *s, CAPSLIST *t)
{
 bool is_restricted = 0;


 if (s == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 is_restricted = SiIsEnterpriseFunctionsRestrictedOnOpenSource(s->Cedar);


 InitCapsList(t);


 AddCapsInt(t, "i_max_packet_size", MAX_PACKET_SIZE);

 if (s->Cedar->Bridge == 0)
 {
  UINT max_sessions, max_clients, max_bridges, max_user_creations;

  max_clients = INFINITE;
  max_bridges = INFINITE;
  max_sessions = SERVER_MAX_SESSIONS_FOR_CARRIER_EDITION;
  max_user_creations = INFINITE;


  AddCapsInt(t, "i_max_hubs", SERVER_MAX_SESSIONS_FOR_CARRIER_EDITION);


  AddCapsInt(t, "i_max_sessions", max_sessions);


  AddCapsInt(t, "i_max_user_creation", max_user_creations);


  AddCapsInt(t, "i_max_clients", max_clients);


  AddCapsInt(t, "i_max_bridges", max_bridges);

  if (s->ServerType != SERVER_TYPE_FARM_MEMBER)
  {

   AddCapsInt(t, "i_max_users_per_hub", MAX_USERS);


   AddCapsInt(t, "i_max_groups_per_hub", MAX_GROUPS);


   AddCapsInt(t, "i_max_access_lists", MAX_ACCESSLISTS);
  }
  else
  {

   AddCapsInt(t, "i_max_users_per_hub", 0);


   AddCapsInt(t, "i_max_groups_per_hub", 0);


   AddCapsInt(t, "i_max_access_lists", 0);
  }


  AddCapsBool(t, "b_support_limit_multilogin", 1);


  AddCapsBool(t, "b_support_qos", 1);


  AddCapsBool(t, "b_support_syslog", 1);



  AddCapsBool(t, "b_support_ipsec", (s->ServerType == SERVER_TYPE_STANDALONE));



  AddCapsBool(t, "b_support_sstp", (s->ServerType == SERVER_TYPE_STANDALONE));



  AddCapsBool(t, "b_support_openvpn", (s->ServerType == SERVER_TYPE_STANDALONE));


  AddCapsBool(t, "b_support_ddns", (s->DDnsClient != ((void*)0)));

  if (s->DDnsClient != ((void*)0))
  {

   AddCapsBool(t, "b_support_ddns_proxy", 1);
  }


  AddCapsBool(t, "b_support_special_listener", 1);
 }
 else
 {

  AddCapsInt(t, "i_max_hubs", 0);


  AddCapsInt(t, "i_max_sessions", 0);


  AddCapsInt(t, "i_max_clients", 0);


  AddCapsInt(t, "i_max_bridges", 0);


  AddCapsInt(t, "i_max_users_per_hub", 0);


  AddCapsInt(t, "i_max_groups_per_hub", 0);


  AddCapsInt(t, "i_max_access_lists", 0);


  AddCapsBool(t, "b_support_qos", 1);


  AddCapsBool(t, "b_support_syslog", 1);


  AddCapsBool(t, "b_support_ipsec", 0);


  AddCapsBool(t, "b_support_sstp", 0);


  AddCapsBool(t, "b_support_openvpn", 0);


  AddCapsBool(t, "b_support_ddns", 0);


  AddCapsBool(t, "b_support_special_listener", 0);
 }


 AddCapsBool(t, "b_cluster_hub_type_fixed", 1);


 AddCapsInt(t, "i_max_mac_tables", MAX_MAC_TABLES);


 AddCapsInt(t, "i_max_ip_tables", MAX_IP_TABLES);


 AddCapsBool(t, "b_support_securenat", 1);


 AddCapsBool(t, "b_suppport_push_route", !is_restricted);
 AddCapsBool(t, "b_suppport_push_route_config", 1);

 if (s->ServerType != SERVER_TYPE_STANDALONE)
 {
  AddCapsBool(t, "b_virtual_nat_disabled", 1);
 }


 AddCapsInt(t, "i_max_secnat_tables", NAT_MAX_SESSIONS);


 if (s->ServerType == SERVER_TYPE_STANDALONE)
 {
  AddCapsBool(t, "b_support_cascade", 1);
 }
 else
 {
  AddCapsBool(t, "b_support_cascade", 0);
 }

 if (s->Cedar->Bridge)
 {

  AddCapsBool(t, "b_bridge", 1);
 }
 else if (s->ServerType == SERVER_TYPE_STANDALONE)
 {

  AddCapsBool(t, "b_standalone", 1);
 }
 else if (s->ServerType == SERVER_TYPE_FARM_CONTROLLER)
 {

  AddCapsBool(t, "b_cluster_controller", 1);
 }
 else
 {

  AddCapsBool(t, "b_cluster_member", 1);
 }


 AddCapsBool(t, "b_support_config_hub", s->ServerType != SERVER_TYPE_FARM_MEMBER &&
  s->Cedar->Bridge == 0);


 AddCapsBool(t, "b_vpn_client_connect", s->Cedar->Bridge == 0 ? 1 : 0);


 AddCapsBool(t, "b_support_radius", s->ServerType != SERVER_TYPE_FARM_MEMBER &&
  s->Cedar->Bridge == 0);


 AddCapsBool(t, "b_local_bridge", IsBridgeSupported());

 if (OS_IS_WINDOWS(GetOsInfo()->OsType))
 {

  AddCapsBool(t, "b_must_install_pcap", IsEthSupported() == 0 ? 1 : 0);
 }
 else
 {

  AddCapsBool(t, "b_must_install_pcap", 0);
 }

 if (IsBridgeSupported())
 {

  const UINT OsType = GetOsInfo()->OsType;
  AddCapsBool(t, "b_tap_supported", OsType == OSTYPE_LINUX || OsType == OSTYPE_BSD);
 }


 if (s->ServerType == SERVER_TYPE_STANDALONE)
 {
  AddCapsBool(t, "b_support_cascade", 1);
 }
 else
 {
  AddCapsBool(t, "b_support_cascade", 0);
 }


 AddCapsBool(t, "b_support_cascade_cert", 1);


 AddCapsBool(t, "b_support_config_log", s->ServerType != SERVER_TYPE_FARM_MEMBER);


 AddCapsBool(t, "b_support_autodelete", 1);


 AddCapsBool(t, "b_support_config_rw", 1);


 AddCapsBool(t, "b_support_hub_admin_option", 1);


 AddCapsBool(t, "b_support_cascade_client_cert", 1);


 AddCapsBool(t, "b_support_hide_hub", 1);


 AddCapsBool(t, "b_support_cluster_admin", 1);


 AddCapsBool(t, "b_is_softether", 1);

 if (s->Cedar->Bridge == 0)
 {


  AddCapsBool(t, "b_support_layer3", 1);

  AddCapsInt(t, "i_max_l3_sw", MAX_NUM_L3_SWITCH);
  AddCapsInt(t, "i_max_l3_if", MAX_NUM_L3_IF);
  AddCapsInt(t, "i_max_l3_table", MAX_NUM_L3_TABLE);


  AddCapsBool(t, "b_support_cluster", 1);
 }
 else
 {
  AddCapsBool(t, "b_support_layer3", 0);

  AddCapsInt(t, "i_max_l3_sw", 0);
  AddCapsInt(t, "i_max_l3_if", 0);
  AddCapsInt(t, "i_max_l3_table", 0);

  AddCapsBool(t, "b_support_cluster", 0);
 }

 if (s->ServerType != SERVER_TYPE_FARM_MEMBER && s->Cedar->Bridge == 0)
 {

  AddCapsBool(t, "b_support_crl", 1);


  AddCapsBool(t, "b_support_ac", 1);
 }


 AddCapsBool(t, "b_support_read_log", 1);


 AddCapsBool(t, "b_support_rename_cascade", 1);


 if (s->Cedar->Beta)
 {

  AddCapsBool(t, "b_beta_version", 1);
 }


 AddCapsBool(t, "b_is_in_vm", s->IsInVm);
 if (IsBridgeSupported() && EthIsInterfaceDescriptionSupportedUnix())
 {
  AddCapsBool(t, "b_support_network_connection_name", 1);
 }



 AddCapsBool(t, "b_support_check_mac", 1);


 AddCapsBool(t, "b_support_check_tcp_state", 1);


 AddCapsBool(t, "b_support_radius_retry_interval_and_several_servers", s->ServerType != SERVER_TYPE_FARM_MEMBER &&
  s->Cedar->Bridge == 0);


 AddCapsBool(t, "b_support_vlan", 1);


 if ((s->Cedar->Bridge == 0) &&
  (s->ServerType == SERVER_TYPE_STANDALONE || s->ServerType == SERVER_TYPE_FARM_CONTROLLER))
 {
  AddCapsBool(t, "b_support_hub_ext_options", 1);
 }
 else
 {
  AddCapsBool(t, "b_support_hub_ext_options", 0);
 }


 AddCapsBool(t, "b_support_policy_ver_3", 1);


 AddCapsBool(t, "b_support_ipv6_acl", 1);


 AddCapsBool(t, "b_support_ex_acl", 1);


 AddCapsBool(t, "b_support_redirect_url_acl", 1);


 AddCapsBool(t, "b_support_acl_group", 1);


 AddCapsBool(t, "b_support_ipv6_ac", 1);


 AddCapsBool(t, "b_support_eth_vlan", (OS_IS_WINDOWS_NT(GetOsType()) && GET_KETA(GetOsType(), 100) >= 2));


 AddCapsBool(t, "b_support_msg", 1);


 AddCapsBool(t, "b_support_udp_acceleration", 1);


 AddCapsBool(t, "b_support_aes_ni", IsAesNiSupported());







 AddCapsBool(t, "b_support_azure", SiIsAzureSupported(s));


 AddCapsBool(t, "b_vpn3", 1);


 AddCapsBool(t, "b_vpn4", 1);


 UpdateGlobalServerFlags(s, t);
}
