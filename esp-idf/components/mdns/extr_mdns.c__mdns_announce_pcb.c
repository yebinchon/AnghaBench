
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int answers; int additional; } ;
typedef TYPE_2__ mdns_tx_packet_t ;
struct TYPE_16__ {int * service; } ;
typedef TYPE_3__ mdns_srv_item_t ;
struct TYPE_17__ {scalar_t__ state; scalar_t__ pcb; } ;
typedef TYPE_4__ mdns_pcb_t ;
typedef size_t mdns_ip_protocol_t ;
typedef size_t mdns_if_t ;
struct TYPE_18__ {int hostname; TYPE_1__* interfaces; } ;
struct TYPE_14__ {TYPE_4__* pcbs; } ;


 int MDNS_TYPE_A ;
 int MDNS_TYPE_AAAA ;
 int MDNS_TYPE_PTR ;
 int MDNS_TYPE_SDPTR ;
 int MDNS_TYPE_SRV ;
 int MDNS_TYPE_TXT ;
 void* PCB_ANNOUNCE_1 ;
 scalar_t__ PCB_RUNNING ;
 scalar_t__ PCB_STATE_IS_ANNOUNCING (TYPE_4__*) ;
 scalar_t__ PCB_STATE_IS_PROBING (TYPE_4__*) ;
 int _mdns_alloc_answer (int *,int ,int *,int,int) ;
 TYPE_2__* _mdns_create_announce_packet (size_t,size_t,TYPE_3__**,size_t,int) ;
 int _mdns_dealloc_answer (int *,int ,int *) ;
 TYPE_2__* _mdns_get_next_pcb_packet (size_t,size_t) ;
 int _mdns_init_pcb_probe (size_t,size_t,TYPE_3__**,size_t,int) ;
 int _mdns_schedule_tx_packet (TYPE_2__*,int ) ;
 TYPE_5__* _mdns_server ;
 scalar_t__ _str_null_or_empty (int ) ;

__attribute__((used)) static void _mdns_announce_pcb(mdns_if_t tcpip_if, mdns_ip_protocol_t ip_protocol, mdns_srv_item_t ** services, size_t len, bool include_ip)
{
    mdns_pcb_t * _pcb = &_mdns_server->interfaces[tcpip_if].pcbs[ip_protocol];
    size_t i;
    if (_pcb->pcb) {
        if (PCB_STATE_IS_PROBING(_pcb)) {
            _mdns_init_pcb_probe(tcpip_if, ip_protocol, services, len, include_ip);
        } else if (PCB_STATE_IS_ANNOUNCING(_pcb)) {
            mdns_tx_packet_t * p = _mdns_get_next_pcb_packet(tcpip_if, ip_protocol);
            if (p) {
                for (i=0; i<len; i++) {
                    if (!_mdns_alloc_answer(&p->answers, MDNS_TYPE_SDPTR, services[i]->service, 0, 0)
                            || !_mdns_alloc_answer(&p->answers, MDNS_TYPE_PTR, services[i]->service, 0, 0)
                            || !_mdns_alloc_answer(&p->answers, MDNS_TYPE_SRV, services[i]->service, 1, 0)
                            || !_mdns_alloc_answer(&p->answers, MDNS_TYPE_TXT, services[i]->service, 1, 0)) {
                        break;
                    }
                }
                if (include_ip) {
                    _mdns_dealloc_answer(&p->additional, MDNS_TYPE_A, ((void*)0));
                    _mdns_dealloc_answer(&p->additional, MDNS_TYPE_AAAA, ((void*)0));
                    _mdns_alloc_answer(&p->answers, MDNS_TYPE_A, ((void*)0), 1, 0);
                    _mdns_alloc_answer(&p->answers, MDNS_TYPE_AAAA, ((void*)0), 1, 0);
                }
                _pcb->state = PCB_ANNOUNCE_1;
            }
        } else if (_pcb->state == PCB_RUNNING) {

            if (_str_null_or_empty(_mdns_server->hostname)) {
                return;
            }

            _pcb->state = PCB_ANNOUNCE_1;
            mdns_tx_packet_t * p = _mdns_create_announce_packet(tcpip_if, ip_protocol, services, len, include_ip);
            if (p) {
                _mdns_schedule_tx_packet(p, 0);
            }
        }
    }
}
