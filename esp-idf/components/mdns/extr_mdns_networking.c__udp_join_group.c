
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct netif {int dummy; } ;
struct ip4_addr {int dummy; } ;
typedef scalar_t__ mdns_ip_protocol_t ;
typedef int mdns_if_t ;
struct TYPE_5__ {int ip6; int ip4; } ;
struct TYPE_6__ {TYPE_1__ u_addr; } ;
typedef TYPE_2__ ip_addr_t ;
typedef int esp_netif_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_STATE ;
 int ESP_OK ;
 TYPE_2__ IPADDR6_INIT (int,int ,int ,int) ;
 int IP_ADDR4 (TYPE_2__*,int,int ,int ,int) ;
 scalar_t__ MDNS_IP_PROTOCOL_V4 ;
 int * _mdns_get_esp_netif (int ) ;
 int assert (struct netif*) ;
 struct netif* esp_netif_get_netif_impl (int *) ;
 int esp_netif_is_netif_up (int *) ;
 scalar_t__ igmp_joingroup_netif (struct netif*,struct ip4_addr const*) ;
 scalar_t__ igmp_leavegroup_netif (struct netif*,struct ip4_addr const*) ;
 scalar_t__ mld6_joingroup_netif (struct netif*,int *) ;
 scalar_t__ mld6_leavegroup_netif (struct netif*,int *) ;

__attribute__((used)) static esp_err_t _udp_join_group(mdns_if_t if_inx, mdns_ip_protocol_t ip_protocol, bool join)
{
    struct netif * netif = ((void*)0);
    esp_netif_t *tcpip_if = _mdns_get_esp_netif(if_inx);

    if (!esp_netif_is_netif_up(tcpip_if)) {

        return ESP_ERR_INVALID_STATE;
    }

    netif = esp_netif_get_netif_impl(tcpip_if);
    assert(netif);

    if (ip_protocol == MDNS_IP_PROTOCOL_V4) {
        ip_addr_t multicast_addr;
        IP_ADDR4(&multicast_addr, 224, 0, 0, 251);

        if(join){
            if (igmp_joingroup_netif(netif, (const struct ip4_addr *)&multicast_addr.u_addr.ip4)) {
                return ESP_ERR_INVALID_STATE;
            }
        } else {
            if (igmp_leavegroup_netif(netif, (const struct ip4_addr *)&multicast_addr.u_addr.ip4)) {
                return ESP_ERR_INVALID_STATE;
            }
        }
    } else {
        ip_addr_t multicast_addr = IPADDR6_INIT(0x000002ff, 0, 0, 0xfb000000);

        if(join){
            if (mld6_joingroup_netif(netif, &(multicast_addr.u_addr.ip6))) {
                return ESP_ERR_INVALID_STATE;
            }
        } else {
            if (mld6_leavegroup_netif(netif, &(multicast_addr.u_addr.ip6))) {
                return ESP_ERR_INVALID_STATE;
            }
        }
    }
    return ESP_OK;
}
