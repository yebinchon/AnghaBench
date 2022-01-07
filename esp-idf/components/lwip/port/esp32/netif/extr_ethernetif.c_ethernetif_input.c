
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pbuf {void* l2_buf; struct netif* l2_owner; void* payload; } ;
struct netif {scalar_t__ (* input ) (struct pbuf*,struct netif*) ;} ;


 scalar_t__ ERR_OK ;
 int LWIP_DEBUGF (int ,char*) ;
 int NETIF_DEBUG ;
 int PBUF_RAW ;
 int PBUF_REF ;
 int ethernet_free_rx_buf_l2 (struct netif*,void*) ;
 int netif_is_up (struct netif*) ;
 struct pbuf* pbuf_alloc (int ,size_t,int ) ;
 int pbuf_free (struct pbuf*) ;
 scalar_t__ stub1 (struct pbuf*,struct netif*) ;

void ethernetif_input(struct netif *netif, void *buffer, size_t len, void *eb)
{
    struct pbuf *p;

    if (buffer == ((void*)0) || !netif_is_up(netif)) {
        if (buffer) {
            ethernet_free_rx_buf_l2(netif, buffer);
        }
        return;
    }


    p = pbuf_alloc(PBUF_RAW, len, PBUF_REF);
    if (p == ((void*)0)) {
        ethernet_free_rx_buf_l2(netif, buffer);
        return;
    }
    p->payload = buffer;





    if (netif->input(p, netif) != ERR_OK) {
        LWIP_DEBUGF(NETIF_DEBUG, ("ethernetif_input: IP input error\n"));
        pbuf_free(p);
    }

}
