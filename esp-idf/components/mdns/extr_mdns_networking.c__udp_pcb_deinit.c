
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int probe_ip; int probe_running; scalar_t__ failed_probes; scalar_t__ probe_services_len; int * probe_services; int * pcb; int state; } ;
typedef TYPE_2__ mdns_pcb_t ;
typedef size_t mdns_ip_protocol_t ;
typedef size_t mdns_if_t ;
struct TYPE_6__ {TYPE_1__* interfaces; } ;
struct TYPE_4__ {TYPE_2__* pcbs; } ;


 int PCB_OFF ;
 TYPE_3__* _mdns_server ;
 int _udp_join_group (size_t,size_t,int) ;
 int _udp_pcb_is_in_use () ;
 int _udp_pcb_main_deinit () ;
 int free (int *) ;

__attribute__((used)) static void _udp_pcb_deinit(mdns_if_t tcpip_if, mdns_ip_protocol_t ip_protocol)
{
    if (!_mdns_server) {
        return;
    }
    mdns_pcb_t * _pcb = &_mdns_server->interfaces[tcpip_if].pcbs[ip_protocol];
    if (_pcb->pcb) {
        free(_pcb->probe_services);
        _pcb->state = PCB_OFF;
        _pcb->pcb = ((void*)0);
        _pcb->probe_ip = 0;
        _pcb->probe_services = ((void*)0);
        _pcb->probe_services_len = 0;
        _pcb->probe_running = 0;
        _pcb->failed_probes = 0;
        _udp_join_group(tcpip_if, ip_protocol, 0);
        if(!_udp_pcb_is_in_use()) {
            _udp_pcb_main_deinit();
        }
    }
}
