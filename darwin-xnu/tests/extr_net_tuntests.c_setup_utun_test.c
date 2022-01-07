
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int T_LOG (char*) ;
 int UTUN_CONTROL_NAME ;
 int UTUN_OPT_ENABLE_CHANNEL ;
 int UTUN_OPT_ENABLE_FLOWSWITCH ;
 int UTUN_OPT_ENABLE_NETIF ;
 int UTUN_OPT_GET_CHANNEL_UUID ;
 int UTUN_OPT_IFNAME ;
 int g_CONTROL_NAME ;
 int g_OPT_ENABLE_CHANNEL ;
 int g_OPT_ENABLE_FLOWSWITCH ;
 int g_OPT_ENABLE_NETIF ;
 int g_OPT_GET_CHANNEL_UUID ;
 int g_OPT_IFNAME ;
 int g_is_utun_test ;

__attribute__((used)) static void
setup_utun_test(void)
{
 T_LOG("Configuring for utun tests");
 g_OPT_ENABLE_NETIF = UTUN_OPT_ENABLE_NETIF;
 g_OPT_ENABLE_FLOWSWITCH = UTUN_OPT_ENABLE_FLOWSWITCH;
 g_OPT_ENABLE_CHANNEL = UTUN_OPT_ENABLE_CHANNEL;
 g_OPT_GET_CHANNEL_UUID = UTUN_OPT_GET_CHANNEL_UUID;
 g_OPT_IFNAME = UTUN_OPT_IFNAME;
 g_CONTROL_NAME = UTUN_CONTROL_NAME;
 g_is_utun_test = 1;
}
