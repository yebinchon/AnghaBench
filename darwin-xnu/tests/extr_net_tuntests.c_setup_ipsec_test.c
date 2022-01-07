
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPSEC_CONTROL_NAME ;
 int IPSEC_OPT_ENABLE_CHANNEL ;
 int IPSEC_OPT_ENABLE_FLOWSWITCH ;
 int IPSEC_OPT_ENABLE_NETIF ;
 int IPSEC_OPT_GET_CHANNEL_UUID ;
 int IPSEC_OPT_IFNAME ;
 int T_LOG (char*) ;
 int g_CONTROL_NAME ;
 int g_OPT_ENABLE_CHANNEL ;
 int g_OPT_ENABLE_FLOWSWITCH ;
 int g_OPT_ENABLE_NETIF ;
 int g_OPT_GET_CHANNEL_UUID ;
 int g_OPT_IFNAME ;
 int g_is_ipsec_test ;

__attribute__((used)) static void
setup_ipsec_test(void)
{
 T_LOG("Configuring for ipsec tests");
 g_OPT_ENABLE_NETIF = IPSEC_OPT_ENABLE_NETIF;
 g_OPT_ENABLE_FLOWSWITCH = IPSEC_OPT_ENABLE_FLOWSWITCH;
 g_OPT_ENABLE_CHANNEL = IPSEC_OPT_ENABLE_CHANNEL;
 g_OPT_GET_CHANNEL_UUID = IPSEC_OPT_GET_CHANNEL_UUID;
 g_OPT_IFNAME = IPSEC_OPT_IFNAME;
 g_CONTROL_NAME = IPSEC_CONTROL_NAME;
 g_is_ipsec_test = 1;
}
