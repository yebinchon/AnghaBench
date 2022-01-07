
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mdns_if_t ;


 scalar_t__ MDNS_IF_ETH ;
 scalar_t__ MDNS_IF_MAX ;
 scalar_t__ MDNS_IF_STA ;

__attribute__((used)) static mdns_if_t _mdns_get_other_if (mdns_if_t tcpip_if)
{
    if (tcpip_if == MDNS_IF_STA) {
        return MDNS_IF_ETH;
    } else if (tcpip_if == MDNS_IF_ETH) {
        return MDNS_IF_STA;
    }
    return MDNS_IF_MAX;
}
