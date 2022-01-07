
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uip_netif {scalar_t__ state; } ;
struct bba_priv {int revid; int devid; int acstart; } ;
typedef int s8_t ;
typedef int s32 ;


 int UIP_ERR_IF ;
 int __bba_init (struct uip_netif*) ;

__attribute__((used)) static s8_t bba_init_one(struct uip_netif *dev)
{
 s32 ret;
 struct bba_priv *priv = (struct bba_priv*)dev->state;

 if(!priv) return UIP_ERR_IF;

 priv->revid = 0x00;
 priv->devid = 0xD107;
 priv->acstart = 0x4E;

 ret = __bba_init(dev);

 return ret;
}
