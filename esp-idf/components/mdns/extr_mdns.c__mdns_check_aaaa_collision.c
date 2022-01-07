
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct esp_ip6_addr {int addr; } ;
typedef scalar_t__ mdns_if_t ;
struct TYPE_4__ {scalar_t__ addr; } ;
typedef TYPE_1__ esp_ip6_addr_t ;


 scalar_t__ MDNS_IF_MAX ;
 int _MDNS_SIZEOF_IP6_ADDR ;
 scalar_t__ _ipv6_address_is_zero (TYPE_1__) ;
 int _mdns_dup_interface (scalar_t__) ;
 int _mdns_get_esp_netif (scalar_t__) ;
 scalar_t__ _mdns_get_other_if (scalar_t__) ;
 scalar_t__ esp_netif_get_ip6_linklocal (int ,struct esp_ip6_addr*) ;
 int memcmp (int *,int *,int ) ;

__attribute__((used)) static int _mdns_check_aaaa_collision(esp_ip6_addr_t * ip, mdns_if_t tcpip_if)
{
    struct esp_ip6_addr if_ip6;
    struct esp_ip6_addr other_ip6;
    if (_ipv6_address_is_zero(*ip)) {
        return 1;
    }
    if (esp_netif_get_ip6_linklocal(_mdns_get_esp_netif(tcpip_if), &if_ip6)) {
        return 1;
    }
    int ret = memcmp((uint8_t*)&if_ip6.addr, (uint8_t*)ip->addr, _MDNS_SIZEOF_IP6_ADDR);
    if (ret > 0) {
        return -1;
    } else if (ret < 0) {

        mdns_if_t other_if = _mdns_get_other_if (tcpip_if);
        if (other_if == MDNS_IF_MAX) {
            return 1;
        }
        if (esp_netif_get_ip6_linklocal(_mdns_get_esp_netif(other_if), &other_ip6)) {
            return 1;
        }
        if (memcmp((uint8_t*)&other_ip6.addr, (uint8_t*)ip->addr, _MDNS_SIZEOF_IP6_ADDR)) {
            return 1;
        }
        _mdns_dup_interface(tcpip_if);
        return 2;
    }
    return 0;
}
