
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {scalar_t__ state; } ;
struct bba_priv {int revid; int devid; int acstart; } ;
typedef int err_t ;


 int ERR_IF ;
 int ERR_OK ;
 int __bba_init (struct netif*) ;

__attribute__((used)) static err_t bba_init_one(struct netif *dev)
{
 struct bba_priv *priv = (struct bba_priv*)dev->state;

 if(!priv) return ERR_IF;

 priv->revid = 0xf0;
 priv->devid = 0xD107;
 priv->acstart = 0x4E;

 __bba_init(dev);

 return ERR_OK;
}
