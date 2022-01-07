
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_13__ {size_t tcpip_if; size_t ip_protocol; TYPE_4__* questions; } ;
typedef TYPE_2__ mdns_tx_packet_t ;
struct TYPE_14__ {int state; int probe_running; int probe_ip; int * probe_services; int failed_probes; int probe_services_len; } ;
typedef TYPE_3__ mdns_pcb_t ;
typedef void* mdns_pcb_state_t ;
struct TYPE_15__ {int unicast; struct TYPE_15__* next; } ;
typedef TYPE_4__ mdns_out_question_t ;
struct TYPE_16__ {TYPE_1__* interfaces; } ;
struct TYPE_12__ {TYPE_3__* pcbs; } ;





 int PCB_OFF ;



 int PCB_RUNNING ;
 TYPE_2__* _mdns_create_announce_from_probe (TYPE_2__*) ;
 int _mdns_dispatch_tx_packet (TYPE_2__*) ;
 int _mdns_free_tx_packet (TYPE_2__*) ;
 int _mdns_schedule_tx_packet (TYPE_2__*,int) ;
 TYPE_6__* _mdns_server ;
 int free (int *) ;

__attribute__((used)) static void _mdns_tx_handle_packet(mdns_tx_packet_t * p)
{
    mdns_tx_packet_t * a = ((void*)0);
    mdns_out_question_t * q = ((void*)0);
    mdns_pcb_t * pcb = &_mdns_server->interfaces[p->tcpip_if].pcbs[p->ip_protocol];
    uint32_t send_after = 1000;

    if (pcb->state == PCB_OFF) {
        _mdns_free_tx_packet(p);
        return;
    }
    _mdns_dispatch_tx_packet(p);

    switch(pcb->state) {
    case 130:
        q = p->questions;
        while (q) {
            q->unicast = 0;
            q = q->next;
        }

    case 129:
        _mdns_schedule_tx_packet(p, 250);
        pcb->state = (mdns_pcb_state_t)((uint8_t)(pcb->state) + 1);
        break;
    case 128:
        a = _mdns_create_announce_from_probe(p);
        if (!a) {
            _mdns_schedule_tx_packet(p, 250);
            break;
        }
        pcb->probe_running = 0;
        pcb->probe_ip = 0;
        pcb->probe_services_len = 0;
        pcb->failed_probes = 0;
        free(pcb->probe_services);
        pcb->probe_services = ((void*)0);
        _mdns_free_tx_packet(p);
        p = a;
        send_after = 250;

    case 133:

    case 132:
        _mdns_schedule_tx_packet(p, send_after);
        pcb->state = (mdns_pcb_state_t)((uint8_t)(pcb->state) + 1);
        break;
    case 131:
        pcb->state = PCB_RUNNING;
        _mdns_free_tx_packet(p);
        break;
    default:
        _mdns_free_tx_packet(p);
        break;
    }
}
