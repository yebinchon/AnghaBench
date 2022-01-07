
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
struct pbuf {int len; scalar_t__ payload; } ;
struct netif {int state; } ;
struct TYPE_2__ {int drop; int recv; } ;


 int LINK_STATS_INC (int ) ;
 int LWIP_DEBUGF (int ,char*) ;
 int MAX_SIZE ;
 int PBUF_LINK ;
 int PBUF_POOL ;
 int PBUF_POOL_BUFSIZE ;
 int SLIP_DEBUG ;




 TYPE_1__ link ;
 struct pbuf* pbuf_alloc (int ,int ,int ) ;
 int pbuf_cat (struct pbuf*,struct pbuf*) ;
 int pbuf_realloc (struct pbuf*,int) ;
 int sio_recv (int ) ;

__attribute__((used)) static struct pbuf *
slipif_input( struct netif * netif )
{
  u8_t c;
  struct pbuf *p, *q;
  int recved;
  int i;

  q = p = ((void*)0);
  recved = i = 0;
  c = 0;

  while (1) {
    c = sio_recv(netif->state);
    switch (c) {
    case 131:
      if (recved > 0) {

  pbuf_realloc(q, recved);

  LINK_STATS_INC(link.recv);

  LWIP_DEBUGF(SLIP_DEBUG, ("slipif: Got packet\n"));
  return q;
      }
      break;

    case 130:
      c = sio_recv(netif->state);
      switch (c) {
      case 129:
  c = 131;
  break;
      case 128:
  c = 130;
  break;
      }


    default:
      if (p == ((void*)0)) {
  LWIP_DEBUGF(SLIP_DEBUG, ("slipif_input: alloc\n"));
  p = pbuf_alloc(PBUF_LINK, PBUF_POOL_BUFSIZE, PBUF_POOL);

  if (p == ((void*)0)) {
    LINK_STATS_INC(link.drop);
    LWIP_DEBUGF(SLIP_DEBUG, ("slipif_input: no new pbuf! (DROP)\n"));
  }

  if (q != ((void*)0)) {
    pbuf_cat(q, p);
  } else {
    q = p;
  }
      }
      if (p != ((void*)0) && recved < MAX_SIZE) {
  ((u8_t *)p->payload)[i] = c;
  recved++;
  i++;
  if (i >= p->len) {
    i = 0;
    p = ((void*)0);
  }
      }
      break;
    }

  }
  return ((void*)0);
}
