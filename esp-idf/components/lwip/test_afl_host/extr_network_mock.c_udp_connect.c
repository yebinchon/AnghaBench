
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;
struct udp_pcb {int dummy; } ;
typedef int ip_addr_t ;
typedef int err_t ;


 int ESP_OK ;

err_t udp_connect(struct udp_pcb *pcb, const ip_addr_t *ipaddr, u16_t port)
{
    return ESP_OK;
}
