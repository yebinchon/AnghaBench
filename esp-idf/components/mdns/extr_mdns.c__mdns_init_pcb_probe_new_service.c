
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int mdns_tx_packet_t ;
typedef int mdns_srv_item_t ;
struct TYPE_6__ {size_t probe_services_len; int probe_ip; int probe_running; int failed_probes; int state; int ** probe_services; } ;
typedef TYPE_2__ mdns_pcb_t ;
typedef size_t mdns_ip_protocol_t ;
typedef size_t mdns_if_t ;
struct TYPE_7__ {TYPE_1__* interfaces; } ;
struct TYPE_5__ {TYPE_2__* pcbs; } ;


 int HOOK_MALLOC_FAILED ;
 int PCB_PROBE_1 ;
 scalar_t__ PCB_STATE_IS_PROBING (TYPE_2__*) ;
 int * _mdns_create_probe_packet (size_t,size_t,int **,size_t,int,int) ;
 int _mdns_schedule_tx_packet (int *,int) ;
 TYPE_3__* _mdns_server ;
 int esp_random () ;
 int free (int **) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static void _mdns_init_pcb_probe_new_service(mdns_if_t tcpip_if, mdns_ip_protocol_t ip_protocol, mdns_srv_item_t ** services, size_t len, bool probe_ip)
{
    mdns_pcb_t * pcb = &_mdns_server->interfaces[tcpip_if].pcbs[ip_protocol];
    size_t services_final_len = len;

    if (PCB_STATE_IS_PROBING(pcb)) {
        services_final_len += pcb->probe_services_len;
    }
    mdns_srv_item_t ** _services = ((void*)0);
    if (services_final_len) {
        _services = (mdns_srv_item_t **)malloc(sizeof(mdns_srv_item_t *) * services_final_len);
        if (!_services) {
            HOOK_MALLOC_FAILED;
            return;
        }

        size_t i;
        for (i=0; i<len; i++) {
            _services[i] = services[i];
        }
        if (pcb->probe_services) {
            for (i=0; i<pcb->probe_services_len; i++) {
                _services[len+i] = pcb->probe_services[i];
            }
            free(pcb->probe_services);
        }
    }

    probe_ip = pcb->probe_ip || probe_ip;

    pcb->probe_ip = 0;
    pcb->probe_services = ((void*)0);
    pcb->probe_services_len = 0;
    pcb->probe_running = 0;

    mdns_tx_packet_t * packet = _mdns_create_probe_packet(tcpip_if, ip_protocol, _services, services_final_len, 1, probe_ip);
    if (!packet) {
        free(_services);
        return;
    }

    pcb->probe_ip = probe_ip;
    pcb->probe_services = _services;
    pcb->probe_services_len = services_final_len;
    pcb->probe_running = 1;
    _mdns_schedule_tx_packet(packet, ((pcb->failed_probes > 5)?1000:120) + (esp_random() & 0x7F));
    pcb->state = PCB_PROBE_1;
}
