
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int answers; TYPE_2__* servers; int flags; int ip_protocol; int tcpip_if; } ;
typedef TYPE_1__ mdns_tx_packet_t ;
struct TYPE_8__ {scalar_t__ type; struct TYPE_8__* next; int * service; } ;
typedef TYPE_2__ mdns_out_answer_t ;


 int MDNS_FLAGS_AUTHORITATIVE ;
 scalar_t__ MDNS_TYPE_A ;
 scalar_t__ MDNS_TYPE_AAAA ;
 scalar_t__ MDNS_TYPE_PTR ;
 scalar_t__ MDNS_TYPE_SDPTR ;
 scalar_t__ MDNS_TYPE_SRV ;
 scalar_t__ MDNS_TYPE_TXT ;
 int _mdns_alloc_answer (int *,scalar_t__,int *,int,int) ;
 TYPE_1__* _mdns_alloc_packet_default (int ,int ) ;
 int _mdns_free_tx_packet (TYPE_1__*) ;

__attribute__((used)) static mdns_tx_packet_t * _mdns_create_announce_from_probe(mdns_tx_packet_t * probe)
{

    mdns_tx_packet_t * packet = _mdns_alloc_packet_default(probe->tcpip_if, probe->ip_protocol);
    if (!packet) {
        return ((void*)0);
    }
    packet->flags = MDNS_FLAGS_AUTHORITATIVE;

    mdns_out_answer_t * s = probe->servers;
    while (s) {
        if (s->type == MDNS_TYPE_SRV) {
            if (!_mdns_alloc_answer(&packet->answers, MDNS_TYPE_SDPTR, s->service, 0, 0)
                    || !_mdns_alloc_answer(&packet->answers, MDNS_TYPE_PTR, s->service, 0, 0)
                    || !_mdns_alloc_answer(&packet->answers, MDNS_TYPE_SRV, s->service, 1, 0)
                    || !_mdns_alloc_answer(&packet->answers, MDNS_TYPE_TXT, s->service, 1, 0)) {
                _mdns_free_tx_packet(packet);
                return ((void*)0);
            }

        } else if (s->type == MDNS_TYPE_A || s->type == MDNS_TYPE_AAAA) {
            if (!_mdns_alloc_answer(&packet->answers, s->type, ((void*)0), 1, 0)) {
                _mdns_free_tx_packet(packet);
                return ((void*)0);
            }
        }

        s = s->next;
    }
    return packet;
}
