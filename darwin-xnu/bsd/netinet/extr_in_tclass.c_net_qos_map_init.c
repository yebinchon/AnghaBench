
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ errno_t ;
struct TYPE_2__ {int * sotc_to_dscp; } ;


 int ASSERT (int) ;
 size_t SOTCIX_CTL ;
 int _DSCP_DF ;
 int _NET_SERVICE_TYPE_COUNT ;
 int default_dscp_to_wifi_ac_map ;
 TYPE_1__ default_net_qos_dscp_map ;
 int fastlane_netsvctype_dscp_map ;
 int set_dscp_to_wifi_ac_map (int ,int) ;
 scalar_t__ set_netsvctype_dscp_map (int ,int ) ;

void
net_qos_map_init()
{
 errno_t error;




 error = set_netsvctype_dscp_map(_NET_SERVICE_TYPE_COUNT,
  fastlane_netsvctype_dscp_map);
 ASSERT(error == 0);




 default_net_qos_dscp_map.sotc_to_dscp[SOTCIX_CTL] = _DSCP_DF;

 set_dscp_to_wifi_ac_map(default_dscp_to_wifi_ac_map, 1);
}
