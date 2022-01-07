
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {int flags; scalar_t__ state; } ;
struct bba_priv {int dummy; } ;
typedef scalar_t__ err_t ;


 scalar_t__ ERR_IF ;
 scalar_t__ ERR_OK ;
 int EXI_CHANNEL_2 ;
 int EXI_RegisterEXICallback (int ,int *) ;
 int LWIP_DEBUGF (int ,char*) ;
 int NETIF_DEBUG ;
 int NETIF_FLAG_LINK_UP ;
 int __bba_exi_stop (struct bba_priv*) ;
 int __bba_exi_wake (struct bba_priv*) ;
 scalar_t__ __bba_get_linkstateasync (struct bba_priv*) ;
 int * bba_event_handler ;
 scalar_t__ bba_probe (struct netif*) ;

err_t bba_init(struct netif *dev)
{
 err_t ret;
 struct bba_priv *priv = (struct bba_priv*)dev->state;

 __bba_exi_stop(priv);

 LWIP_DEBUGF(NETIF_DEBUG, ("bba_init(call EXI_RegisterEXICallback())\n"));
 EXI_RegisterEXICallback(EXI_CHANNEL_2,bba_event_handler);

 ret = bba_probe(dev);
 if(ret!=ERR_OK) {
  EXI_RegisterEXICallback(EXI_CHANNEL_2,((void*)0));
  __bba_exi_wake(priv);
  return ret;
 }

 ret = __bba_get_linkstateasync(priv);
 if(ret) {
  dev->flags |= NETIF_FLAG_LINK_UP;
  ret = ERR_OK;
 } else {
  EXI_RegisterEXICallback(EXI_CHANNEL_2,((void*)0));
  ret = ERR_IF;
 }

 __bba_exi_wake(priv);
 return ret;
}
