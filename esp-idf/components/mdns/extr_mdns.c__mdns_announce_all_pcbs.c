
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int mdns_srv_item_t ;
typedef int mdns_ip_protocol_t ;
typedef int mdns_if_t ;


 scalar_t__ MDNS_IF_MAX ;
 scalar_t__ MDNS_IP_PROTOCOL_MAX ;
 int _mdns_announce_pcb (int ,int ,int **,size_t,int) ;

__attribute__((used)) static void _mdns_announce_all_pcbs(mdns_srv_item_t ** services, size_t len, bool include_ip)
{
    uint8_t i, j;
    for (i=0; i<MDNS_IF_MAX; i++) {
        for (j=0; j<MDNS_IP_PROTOCOL_MAX; j++) {
            _mdns_announce_pcb((mdns_if_t)i, (mdns_ip_protocol_t)j, services, len, include_ip);
        }
    }
}
