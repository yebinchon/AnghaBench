
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct netif {scalar_t__ state; } ;
struct bba_priv {TYPE_1__* ethaddr; int acstart; int devid; int revid; } ;
typedef int err_t ;
struct TYPE_2__ {int * addr; } ;


 int BBA_CMD_IRMASKALL ;
 int BBA_CMD_IRMASKNONE ;
 int BBA_IMR ;
 int BBA_IMR_FIFOEIM ;
 int BBA_IR ;
 int BBA_NAFR_PAR0 ;
 int BBA_NWAYC ;
 int ERR_IF ;
 int ERR_OK ;
 int LWIP_DEBUGF (int ,char*) ;
 int NETIF_DEBUG ;
 int __bba_recv_init () ;
 int __bba_reset () ;
 int bba_cmd_in8 (int) ;
 int bba_cmd_out8 (int,int ) ;
 int bba_cmd_outs (int,int *,int) ;
 int bba_in8 (int) ;
 int bba_ins (int ,int *,int) ;
 int bba_out8 (int,int) ;
 int udelay (int) ;

__attribute__((used)) static err_t __bba_init(struct netif *dev)
{
 u8 nwayc;
 struct bba_priv *priv = (struct bba_priv*)dev->state;

 if(!priv) return ERR_IF;

 LWIP_DEBUGF(NETIF_DEBUG,("initializing BBA...\n"));
 bba_cmd_out8(0x02,BBA_CMD_IRMASKALL);

 __bba_reset();

 priv->revid = bba_cmd_in8(0x01);

 bba_cmd_outs(0x04,&priv->devid,2);
 bba_cmd_out8(0x05,priv->acstart);



 bba_out8(0x58, 0x80);
 bba_out8(0x59, 0x00);
 bba_out8(0x5a, 0x03);
 bba_out8(0x5b, 0x83);
 bba_out8(0x5c, 0x32);
 bba_out8(0x5d, 0xfe);
 bba_out8(0x5e, 0x1f);
 bba_out8(0x5f, 0x1f);
 udelay(100);

 __bba_recv_init();


 nwayc = bba_in8(BBA_NWAYC)&0xc0;
 bba_out8(BBA_NWAYC,nwayc);
 udelay(100);
 nwayc |= 0x04;
 bba_out8(BBA_NWAYC,nwayc);
 udelay(100);
 nwayc |= 0x08;
 bba_out8(BBA_NWAYC,nwayc);
 udelay(100);

 bba_ins(BBA_NAFR_PAR0,priv->ethaddr->addr, 6);
 LWIP_DEBUGF(NETIF_DEBUG,("MAC ADDRESS %02x:%02x:%02x:%02x:%02x:%02x\n",
  priv->ethaddr->addr[0], priv->ethaddr->addr[1], priv->ethaddr->addr[2],
  priv->ethaddr->addr[3], priv->ethaddr->addr[4], priv->ethaddr->addr[5]));

 bba_out8(BBA_IR,0xFF);
 bba_out8(BBA_IMR,0xFF&~BBA_IMR_FIFOEIM);

 bba_cmd_out8(0x02,BBA_CMD_IRMASKNONE);

 return ERR_OK;
}
