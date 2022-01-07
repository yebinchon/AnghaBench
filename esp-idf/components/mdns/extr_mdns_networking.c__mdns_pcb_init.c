
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mdns_ip_protocol_t ;
typedef int mdns_if_t ;
struct TYPE_2__ {int err; int call; int ip_protocol; int tcpip_if; } ;
typedef TYPE_1__ mdns_api_call_t ;
typedef int esp_err_t ;


 int _mdns_pcb_init_api ;
 int tcpip_api_call (int ,int *) ;

esp_err_t _mdns_pcb_init(mdns_if_t tcpip_if, mdns_ip_protocol_t ip_protocol)
{
    mdns_api_call_t msg = {
        .tcpip_if = tcpip_if,
        .ip_protocol = ip_protocol
    };
    tcpip_api_call(_mdns_pcb_init_api, &msg.call);
    return msg.err;
}
