
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int mdns_srv_item_t ;
struct TYPE_6__ {int probe_services_len; int ** probe_services; int state; } ;
typedef TYPE_2__ mdns_pcb_t ;
typedef size_t mdns_ip_protocol_t ;
typedef size_t mdns_if_t ;
struct TYPE_7__ {int hostname; TYPE_1__* interfaces; } ;
struct TYPE_5__ {TYPE_2__* pcbs; } ;


 int PCB_RUNNING ;
 scalar_t__ PCB_STATE_IS_PROBING (TYPE_2__*) ;
 int _mdns_clear_pcb_tx_queue_head (size_t,size_t) ;
 int _mdns_init_pcb_probe_new_service (size_t,size_t,int **,size_t,int) ;
 TYPE_3__* _mdns_server ;
 scalar_t__ _str_null_or_empty (int ) ;

__attribute__((used)) static void _mdns_init_pcb_probe(mdns_if_t tcpip_if, mdns_ip_protocol_t ip_protocol, mdns_srv_item_t ** services, size_t len, bool probe_ip)
{
    mdns_pcb_t * pcb = &_mdns_server->interfaces[tcpip_if].pcbs[ip_protocol];

    _mdns_clear_pcb_tx_queue_head(tcpip_if, ip_protocol);

    if (_str_null_or_empty(_mdns_server->hostname)) {
        pcb->state = PCB_RUNNING;
        return;
    }

    if (PCB_STATE_IS_PROBING(pcb)) {

        mdns_srv_item_t * new_probe_services[len];
        int new_probe_service_len = 0;
        bool found;
        for (int j=0; j < len; ++j) {
            found = 0;
            for (int i=0; i < pcb->probe_services_len; ++i) {
                if (pcb->probe_services[i] == services[j]) {
                    found = 1;
                    break;
                }
            }
            if (!found) {
                new_probe_services[new_probe_service_len++] = services[j];
            }
        }

        _mdns_init_pcb_probe_new_service(tcpip_if, ip_protocol,
                                         new_probe_service_len?new_probe_services:((void*)0), new_probe_service_len, probe_ip);
    } else {

        _mdns_init_pcb_probe_new_service(tcpip_if, ip_protocol, services, len, probe_ip);
    }
}
