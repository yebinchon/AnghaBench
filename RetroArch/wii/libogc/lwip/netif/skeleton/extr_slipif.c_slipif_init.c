
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {char* name; int mtu; int state; scalar_t__ num; int flags; int output; } ;
typedef int err_t ;


 int ERR_IF ;
 int ERR_OK ;
 int LWIP_DEBUGF (int ,char*) ;
 int NETIF_FLAG_POINTTOPOINT ;
 int SLIPIF_THREAD_PRIO ;
 int SLIP_DEBUG ;
 int sio_open (scalar_t__) ;
 int slipif_loop ;
 int slipif_output ;
 int sys_thread_new (int ,struct netif*,int ) ;

err_t
slipif_init(struct netif *netif)
{

  LWIP_DEBUGF(SLIP_DEBUG, ("slipif_init: netif->num=%x\n", (int)netif->num));

  netif->name[0] = 's';
  netif->name[1] = 'l';
  netif->output = slipif_output;
  netif->mtu = 1500;
  netif->flags = NETIF_FLAG_POINTTOPOINT;

  netif->state = sio_open(netif->num);
  if (!netif->state)
      return ERR_IF;

  sys_thread_new(slipif_loop, netif, SLIPIF_THREAD_PRIO);
  return ERR_OK;
}
