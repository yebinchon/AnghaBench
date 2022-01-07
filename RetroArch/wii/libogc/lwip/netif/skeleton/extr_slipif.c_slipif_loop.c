
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pbuf {int dummy; } ;
struct netif {int (* input ) (struct pbuf*,struct netif*) ;} ;


 struct pbuf* slipif_input (struct netif*) ;
 int stub1 (struct pbuf*,struct netif*) ;

__attribute__((used)) static void
slipif_loop(void *nf)
{
  struct pbuf *p;
  struct netif *netif = (struct netif *)nf;

  while (1) {
    p = slipif_input(netif);
    netif->input(p, netif);
  }
}
