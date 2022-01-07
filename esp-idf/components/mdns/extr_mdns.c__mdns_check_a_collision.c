
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ mdns_if_t ;
struct TYPE_6__ {scalar_t__ addr; } ;
struct TYPE_7__ {TYPE_1__ ip; } ;
typedef TYPE_2__ esp_netif_ip_info_t ;
struct TYPE_8__ {scalar_t__ addr; } ;
typedef TYPE_3__ esp_ip4_addr_t ;


 scalar_t__ MDNS_IF_MAX ;
 int _mdns_dup_interface (scalar_t__) ;
 int _mdns_get_esp_netif (scalar_t__) ;
 scalar_t__ _mdns_get_other_if (scalar_t__) ;
 scalar_t__ esp_netif_get_ip_info (int ,TYPE_2__*) ;
 int memcmp (int *,int *,int) ;

__attribute__((used)) static int _mdns_check_a_collision(esp_ip4_addr_t * ip, mdns_if_t tcpip_if)
{
    esp_netif_ip_info_t if_ip_info;
    esp_netif_ip_info_t other_ip_info;
    if (!ip->addr) {
        return 1;
    }
    if (esp_netif_get_ip_info(_mdns_get_esp_netif(tcpip_if), &if_ip_info)) {
        return 1;
    }

    int ret = memcmp((uint8_t*)&if_ip_info.ip.addr, (uint8_t*)&ip->addr, sizeof(esp_ip4_addr_t));
    if (ret > 0) {
        return -1;
    } else if (ret < 0) {

        mdns_if_t other_if = _mdns_get_other_if (tcpip_if);
        if (other_if == MDNS_IF_MAX) {
            return 1;
        }
        if (esp_netif_get_ip_info(_mdns_get_esp_netif(other_if), &other_ip_info)) {
            return 1;
        }
        if (ip->addr != other_ip_info.ip.addr) {
            return 1;
        }
        _mdns_dup_interface(tcpip_if);
        return 2;
    }
    return 0;
}
