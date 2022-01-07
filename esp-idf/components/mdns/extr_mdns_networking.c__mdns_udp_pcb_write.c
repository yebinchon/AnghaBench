
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct pbuf {scalar_t__ payload; } ;
typedef int mdns_ip_protocol_t ;
typedef int mdns_if_t ;
struct TYPE_2__ {scalar_t__ err; int call; int port; int * ip; struct pbuf* pbt; int ip_protocol; int tcpip_if; } ;
typedef TYPE_1__ mdns_api_call_t ;
typedef int ip_addr_t ;
typedef int esp_ip_addr_t ;


 int PBUF_RAM ;
 int PBUF_TRANSPORT ;
 int _mdns_udp_pcb_write_api ;
 int memcpy (int *,int *,size_t) ;
 struct pbuf* pbuf_alloc (int ,size_t,int ) ;
 int tcpip_api_call (int ,int *) ;

size_t _mdns_udp_pcb_write(mdns_if_t tcpip_if, mdns_ip_protocol_t ip_protocol, const esp_ip_addr_t *ip, uint16_t port, uint8_t * data, size_t len)
{
    struct pbuf* pbt = pbuf_alloc(PBUF_TRANSPORT, len, PBUF_RAM);
    if (pbt == ((void*)0)) {
        return 0;
    }
    memcpy((uint8_t *)pbt->payload, data, len);

    mdns_api_call_t msg = {
        .tcpip_if = tcpip_if,
        .ip_protocol = ip_protocol,
        .pbt = pbt,
        .ip = (ip_addr_t *)ip,
        .port = port
    };
    tcpip_api_call(_mdns_udp_pcb_write_api, &msg.call);

    if (msg.err) {
        return 0;
    }
    return len;
}
