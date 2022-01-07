
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {int mtu; int hwaddr_len; int * hwaddr; int flags; int linkoutput; int output; int * name; } ;
struct eth_addr {int dummy; } ;
struct bba_priv {int state; struct eth_addr* ethaddr; int tq_xmit; } ;
typedef struct bba_priv* dev_s ;


 int ERR_OK ;
 int IFNAME0 ;
 int IFNAME1 ;
 int LWIP_DEBUGF (int ,char*) ;
 int LWIP_ERROR (char*) ;
 int LWP_InitQueue (int *) ;
 int NETIF_DEBUG ;
 int NETIF_FLAG_BROADCAST ;
 int __bba_link_tx ;
 int __bba_start_tx ;
 struct netif* gc_netif ;
 scalar_t__ mem_malloc (int) ;
 int memset (struct bba_priv*,int ,int) ;
 int wait_exi_queue ;

dev_s bba_create(struct netif *dev)
{
 struct bba_priv *priv = ((void*)0);

 LWIP_DEBUGF(NETIF_DEBUG, ("bba_create()\n"));

 priv = (struct bba_priv*)mem_malloc(sizeof(struct bba_priv));
 if(!priv) {
  LWIP_ERROR(("bba_create: out of memory for bba_priv\n"));
  return ((void*)0);
 }
 memset(priv,0,sizeof(struct bba_priv));

 LWP_InitQueue(&priv->tq_xmit);
 LWP_InitQueue(&wait_exi_queue);

 dev->name[0] = IFNAME0;
 dev->name[1] = IFNAME1;
 dev->output = __bba_start_tx;
 dev->linkoutput = __bba_link_tx;
 dev->mtu = 1500;
 dev->flags = NETIF_FLAG_BROADCAST;
 dev->hwaddr_len = 6;

 priv->ethaddr = (struct eth_addr*)&(dev->hwaddr[0]);
 priv->state = ERR_OK;

 gc_netif = dev;
 return priv;
}
