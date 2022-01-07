
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t mdns_ip_protocol_t ;
typedef size_t mdns_if_t ;
struct TYPE_6__ {TYPE_2__* interfaces; } ;
struct TYPE_5__ {TYPE_1__* pcbs; } ;
struct TYPE_4__ {int pcb; } ;


 scalar_t__ _mdns_pcb_init (size_t,size_t) ;
 int _mdns_restart_pcb (size_t,size_t) ;
 TYPE_3__* _mdns_server ;

void _mdns_enable_pcb(mdns_if_t tcpip_if, mdns_ip_protocol_t ip_protocol)
{
    if (!_mdns_server->interfaces[tcpip_if].pcbs[ip_protocol].pcb) {
        if (_mdns_pcb_init(tcpip_if, ip_protocol)) {
            return;
        }
    }
    _mdns_restart_pcb(tcpip_if, ip_protocol);
}
