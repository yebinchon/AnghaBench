
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct pbuf {int len; scalar_t__ payload; struct pbuf* next; } ;
struct netif {int state; } ;
struct ip_addr {int dummy; } ;
typedef int err_t ;




 int SLIP_ESC_END ;
 int SLIP_ESC_ESC ;
 int sio_send (int const,int ) ;

err_t
slipif_output(struct netif *netif, struct pbuf *p, struct ip_addr *ipaddr)
{
  struct pbuf *q;
  int i;
  u8_t c;


  sio_send(129, netif->state);

  for(q = p; q != ((void*)0); q = q->next) {
    for(i = 0; i < q->len; i++) {
      c = ((u8_t *)q->payload)[i];
      switch (c) {
      case 129:
  sio_send(128, netif->state);
  sio_send(SLIP_ESC_END, netif->state);
  break;
      case 128:
  sio_send(128, netif->state);
  sio_send(SLIP_ESC_ESC, netif->state);
  break;
      default:
  sio_send(c, netif->state);
  break;
      }
    }
  }
  sio_send(129, netif->state);
  return 0;
}
