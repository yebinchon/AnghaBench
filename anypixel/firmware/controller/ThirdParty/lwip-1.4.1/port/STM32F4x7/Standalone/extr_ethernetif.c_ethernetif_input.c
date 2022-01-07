
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pbuf {int dummy; } ;
struct netif {scalar_t__ (* input ) (struct pbuf*,struct netif*) ;} ;
typedef scalar_t__ err_t ;


 scalar_t__ ERR_MEM ;
 scalar_t__ ERR_OK ;
 int LWIP_DEBUGF (int ,char*) ;
 int NETIF_DEBUG ;
 struct pbuf* low_level_input (struct netif*) ;
 int pbuf_free (struct pbuf*) ;
 scalar_t__ stub1 (struct pbuf*,struct netif*) ;

err_t ethernetif_input(struct netif *netif)
{
  err_t err;
  struct pbuf *p;


  p = low_level_input(netif);


  if (p == ((void*)0)) return ERR_MEM;


  err = netif->input(p, netif);

  if (err != ERR_OK)
  {
    LWIP_DEBUGF(NETIF_DEBUG, ("ethernetif_input: IP input error\n"));
    pbuf_free(p);
  }
  return err;
}
