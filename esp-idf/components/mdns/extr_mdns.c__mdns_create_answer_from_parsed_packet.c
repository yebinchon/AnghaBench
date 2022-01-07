
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {scalar_t__ port; int dst; int answers; int additional; int distributed; int flags; } ;
typedef TYPE_1__ mdns_tx_packet_t ;
struct TYPE_12__ {int * service; } ;
typedef TYPE_2__ mdns_srv_item_t ;
struct TYPE_13__ {scalar_t__ type; struct TYPE_13__* next; scalar_t__ unicast; scalar_t__ proto; scalar_t__ service; } ;
typedef TYPE_3__ mdns_parsed_question_t ;
struct TYPE_14__ {scalar_t__ src_port; int src; int probe; TYPE_3__* questions; int distributed; int ip_protocol; int tcpip_if; } ;
typedef TYPE_4__ mdns_parsed_packet_t ;
typedef int esp_ip_addr_t ;


 int MDNS_FLAGS_AUTHORITATIVE ;
 scalar_t__ MDNS_SERVICE_PORT ;
 scalar_t__ MDNS_TYPE_A ;
 scalar_t__ MDNS_TYPE_AAAA ;
 scalar_t__ MDNS_TYPE_ANY ;
 scalar_t__ MDNS_TYPE_PTR ;
 scalar_t__ MDNS_TYPE_SDPTR ;
 scalar_t__ MDNS_TYPE_SRV ;
 scalar_t__ MDNS_TYPE_TXT ;
 int _mdns_alloc_answer (int *,scalar_t__,int *,int,int) ;
 TYPE_1__* _mdns_alloc_packet_default (int ,int ) ;
 int _mdns_dispatch_tx_packet (TYPE_1__*) ;
 int _mdns_free_tx_packet (TYPE_1__*) ;
 TYPE_2__* _mdns_get_service_item (scalar_t__,scalar_t__) ;
 int _mdns_schedule_tx_packet (TYPE_1__*,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void _mdns_create_answer_from_parsed_packet(mdns_parsed_packet_t * parsed_packet)
{
    if (!parsed_packet->questions) {
        return;
    }
    bool send_flush = parsed_packet->src_port == MDNS_SERVICE_PORT;
    bool unicast = 0;
    bool shared = 0;
    mdns_tx_packet_t * packet = _mdns_alloc_packet_default(parsed_packet->tcpip_if, parsed_packet->ip_protocol);
    if (!packet) {
        return;
    }
    packet->flags = MDNS_FLAGS_AUTHORITATIVE;
    packet->distributed = parsed_packet->distributed;

    mdns_parsed_question_t * q = parsed_packet->questions;
    while (q) {
        mdns_srv_item_t * service = ((void*)0);
        if (q->service && q->proto) {
            service = _mdns_get_service_item(q->service, q->proto);
            if (!service) {
                continue;
            }
        }
        if (q->unicast) {
            unicast = 1;
        }
        if (service) {
            if (q->type == MDNS_TYPE_PTR || q->type == MDNS_TYPE_ANY) {
                if (q->type == MDNS_TYPE_PTR || !parsed_packet->probe) {
                    shared = 1;
                }
                if (!_mdns_alloc_answer(&packet->answers, MDNS_TYPE_PTR, service->service, 0, 0)
                        || !_mdns_alloc_answer(&packet->answers, MDNS_TYPE_SRV, service->service, send_flush, 0)
                        || !_mdns_alloc_answer(&packet->answers, MDNS_TYPE_TXT, service->service, send_flush, 0)
                        || !_mdns_alloc_answer(shared?&packet->additional:&packet->answers, MDNS_TYPE_A, ((void*)0), send_flush, 0)
                        || !_mdns_alloc_answer(shared?&packet->additional:&packet->answers, MDNS_TYPE_AAAA, ((void*)0), send_flush, 0)) {
                    _mdns_free_tx_packet(packet);
                    return;
                }
            } else if (q->type == MDNS_TYPE_SRV) {
                if (!_mdns_alloc_answer(&packet->answers, MDNS_TYPE_SRV, service->service, send_flush, 0)
                        || !_mdns_alloc_answer(&packet->additional, MDNS_TYPE_A, ((void*)0), send_flush, 0)
                        || !_mdns_alloc_answer(&packet->additional, MDNS_TYPE_AAAA, ((void*)0), send_flush, 0)) {
                    _mdns_free_tx_packet(packet);
                    return;
                }
            } else if (q->type == MDNS_TYPE_TXT) {
                if (!_mdns_alloc_answer(&packet->answers, MDNS_TYPE_TXT, service->service, send_flush, 0)) {
                    _mdns_free_tx_packet(packet);
                    return;
                }
            } else if (q->type == MDNS_TYPE_SDPTR) {
                shared = 1;
                if (!_mdns_alloc_answer(&packet->answers, MDNS_TYPE_PTR, service->service, 0, 0)) {
                    _mdns_free_tx_packet(packet);
                    return;
                }
            }
        } else {
            if (q->type == MDNS_TYPE_ANY || q->type == MDNS_TYPE_A || q->type == MDNS_TYPE_AAAA) {
                if (!_mdns_alloc_answer(&packet->answers, MDNS_TYPE_A, ((void*)0), send_flush, 0)
                        || !_mdns_alloc_answer(&packet->answers, MDNS_TYPE_AAAA, ((void*)0), send_flush, 0)) {
                    _mdns_free_tx_packet(packet);
                    return;
                }
            } else if (!_mdns_alloc_answer(&packet->answers, q->type, ((void*)0), send_flush, 0)) {
                _mdns_free_tx_packet(packet);
                return;
            }
        }
        q = q->next;
    }
    if (unicast || !send_flush) {
        memcpy(&packet->dst, &parsed_packet->src, sizeof(esp_ip_addr_t));
        packet->port = parsed_packet->src_port;
    }

    static uint8_t share_step = 0;
    if (shared) {
        _mdns_schedule_tx_packet(packet, 25 + (share_step * 25));
        share_step = (share_step + 1) & 0x03;
    } else {
        _mdns_dispatch_tx_packet(packet);
        _mdns_free_tx_packet(packet);
    }
}
