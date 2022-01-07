
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pbuf {int dummy; } ;
struct netif {int dummy; } ;
typedef int ip4_addr_t ;
typedef int err_t ;


 int ESP_OK ;

err_t etharp_query(struct netif *netif, const ip4_addr_t *ipaddr, struct pbuf *q)
{
    return ESP_OK;
}
