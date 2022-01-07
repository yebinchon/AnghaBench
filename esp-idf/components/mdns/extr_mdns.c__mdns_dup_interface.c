
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef size_t mdns_if_t ;
struct TYPE_6__ {TYPE_2__* interfaces; } ;
struct TYPE_5__ {TYPE_1__* pcbs; } ;
struct TYPE_4__ {int state; scalar_t__ pcb; } ;


 size_t MDNS_IP_PROTOCOL_MAX ;
 int PCB_DUP ;
 int _mdns_announce_pcb (size_t,size_t,int *,int ,int) ;
 int _mdns_clear_pcb_tx_queue_head (size_t,size_t) ;
 size_t _mdns_get_other_if (size_t) ;
 int _mdns_pcb_deinit (size_t,size_t) ;
 TYPE_3__* _mdns_server ;

__attribute__((used)) static void _mdns_dup_interface(mdns_if_t tcpip_if)
{
    uint8_t i;
    mdns_if_t other_if = _mdns_get_other_if (tcpip_if);
    for (i=0; i<MDNS_IP_PROTOCOL_MAX; i++) {
        if (_mdns_server->interfaces[other_if].pcbs[i].pcb) {

            if (_mdns_server->interfaces[tcpip_if].pcbs[i].pcb) {
                _mdns_clear_pcb_tx_queue_head(tcpip_if, i);
                _mdns_pcb_deinit(tcpip_if, i);
            }
            _mdns_server->interfaces[tcpip_if].pcbs[i].state = PCB_DUP;
            _mdns_announce_pcb(other_if, i, ((void*)0), 0, 1);
        }
    }
}
