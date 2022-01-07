
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netplay_host_list {size_t size; struct netplay_host* hosts; } ;
struct netplay_host {int dummy; } ;


 int CMD_EVENT_NETPLAY_DEINIT ;
 int CMD_EVENT_NETPLAY_INIT_DIRECT ;
 int CMD_EVENT_RESUME ;
 int RARCH_NETPLAY_CTL_ENABLE_CLIENT ;
 int RARCH_NETPLAY_CTL_IS_DATA_INITED ;
 int RARCH_NETPLAY_DISCOVERY_CTL_LAN_GET_RESPONSES ;
 scalar_t__ command_event (int ,void*) ;
 int generic_action_ok_command (int ) ;
 int netplay_discovery_driver_ctl (int ,struct netplay_host_list**) ;
 scalar_t__ netplay_driver_ctl (int ,int *) ;

__attribute__((used)) static int action_ok_netplay_lan_scan(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   return -1;
}
