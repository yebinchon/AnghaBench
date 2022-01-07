
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;
struct udp_pcb {int dummy; } ;
struct pbuf {int dummy; } ;
struct netif {int dummy; } ;
typedef int ip_addr_t ;
typedef int err_t ;


 int ESP_OK ;

err_t udp_sendto_if_src(struct udp_pcb *pcb, struct pbuf *p, const ip_addr_t *dst_ip, u16_t dst_port, struct netif *netif, const ip_addr_t *src_ip)
{
    return ESP_OK;
}
