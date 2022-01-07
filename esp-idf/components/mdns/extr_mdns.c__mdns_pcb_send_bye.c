
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int answers; int flags; } ;
typedef TYPE_1__ mdns_tx_packet_t ;
struct TYPE_8__ {int * service; } ;
typedef TYPE_2__ mdns_srv_item_t ;
typedef int mdns_ip_protocol_t ;
typedef int mdns_if_t ;


 int MDNS_FLAGS_AUTHORITATIVE ;
 int MDNS_TYPE_A ;
 int MDNS_TYPE_AAAA ;
 int MDNS_TYPE_PTR ;
 int _mdns_alloc_answer (int *,int ,int *,int,int) ;
 TYPE_1__* _mdns_alloc_packet_default (int ,int ) ;
 int _mdns_dispatch_tx_packet (TYPE_1__*) ;
 int _mdns_free_tx_packet (TYPE_1__*) ;

__attribute__((used)) static void _mdns_pcb_send_bye(mdns_if_t tcpip_if, mdns_ip_protocol_t ip_protocol, mdns_srv_item_t ** services, size_t len, bool include_ip)
{
    mdns_tx_packet_t * packet = _mdns_alloc_packet_default(tcpip_if, ip_protocol);
    if (!packet) {
        return;
    }
    packet->flags = MDNS_FLAGS_AUTHORITATIVE;
    size_t i;
    for (i=0; i<len; i++) {
        if (!_mdns_alloc_answer(&packet->answers, MDNS_TYPE_PTR, services[i]->service, 1, 1)) {
            _mdns_free_tx_packet(packet);
            return;
        }
    }
    if (include_ip && (!_mdns_alloc_answer(&packet->answers, MDNS_TYPE_A, ((void*)0), 1, 1) || !_mdns_alloc_answer(&packet->answers, MDNS_TYPE_AAAA, ((void*)0), 1, 1))) {
        _mdns_free_tx_packet(packet);
        return;
    }
    _mdns_dispatch_tx_packet(packet);
    _mdns_free_tx_packet(packet);
}
