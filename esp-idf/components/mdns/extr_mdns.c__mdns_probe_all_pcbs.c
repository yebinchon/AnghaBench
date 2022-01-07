
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int mdns_srv_item_t ;
struct TYPE_5__ {int probe_running; scalar_t__ probe_services_len; int * probe_services; scalar_t__ pcb; } ;
typedef TYPE_2__ mdns_pcb_t ;
typedef int mdns_ip_protocol_t ;
typedef int mdns_if_t ;
struct TYPE_6__ {TYPE_1__* interfaces; } ;
struct TYPE_4__ {TYPE_2__* pcbs; } ;


 size_t MDNS_IF_MAX ;
 size_t MDNS_IP_PROTOCOL_MAX ;
 int _mdns_init_pcb_probe (int ,int ,int **,size_t,int) ;
 TYPE_3__* _mdns_server ;
 int free (int *) ;

__attribute__((used)) static void _mdns_probe_all_pcbs(mdns_srv_item_t ** services, size_t len, bool probe_ip, bool clear_old_probe)
{
    uint8_t i, j;
    for (i=0; i<MDNS_IF_MAX; i++) {
        for (j=0; j<MDNS_IP_PROTOCOL_MAX; j++) {
            if (_mdns_server->interfaces[i].pcbs[j].pcb) {
                mdns_pcb_t * _pcb = &_mdns_server->interfaces[i].pcbs[j];
                if (clear_old_probe) {
                    free(_pcb->probe_services);
                    _pcb->probe_services = ((void*)0);
                    _pcb->probe_services_len = 0;
                    _pcb->probe_running = 0;
                }
                _mdns_init_pcb_probe((mdns_if_t)i, (mdns_ip_protocol_t)j, services, len, probe_ip);
            }
        }
    }
}
