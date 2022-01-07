
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {scalar_t__ addr; } ;
typedef TYPE_1__ esp_ip6_addr_t ;


 size_t _MDNS_SIZEOF_IP6_ADDR ;

__attribute__((used)) static bool _ipv6_address_is_zero(esp_ip6_addr_t ip6)
{
    uint8_t i;
    uint8_t * data = (uint8_t *)ip6.addr;
    for (i=0; i<_MDNS_SIZEOF_IP6_ADDR; i++) {
        if (data[i]) {
            return 0;
        }
    }
    return 1;
}
