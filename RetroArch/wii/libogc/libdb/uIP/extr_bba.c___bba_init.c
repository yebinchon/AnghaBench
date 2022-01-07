
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uip_netif {scalar_t__ state; } ;
struct bba_priv {TYPE_1__* ethaddr; int acstart; int devid; int revid; } ;
typedef int s8_t ;
struct TYPE_2__ {int addr; } ;


 int BBA_CMD_IRMASKNONE ;
 int BBA_IMR ;
 int BBA_IMR_FIFOEIM ;
 int BBA_IR ;
 int BBA_NAFR_PAR0 ;
 int UIP_ERR_IF ;
 int UIP_ERR_OK ;
 int __bba_recv_init () ;
 int __bba_reset () ;
 int bba_cmd_in8 (int) ;
 int bba_cmd_out8 (int,int ) ;
 int bba_cmd_outs (int,int *,int) ;
 int bba_in8 (int) ;
 int bba_ins (int ,int ,int) ;
 int bba_out8 (int,int) ;

__attribute__((used)) static s8_t __bba_init(struct uip_netif *dev)
{
 struct bba_priv *priv = (struct bba_priv*)dev->state;
 if(!priv) return UIP_ERR_IF;

 __bba_reset();

 priv->revid = bba_cmd_in8(0x01);

 bba_cmd_outs(0x04,&priv->devid,2);
 bba_cmd_out8(0x05,priv->acstart);

 bba_out8(0x5b, (bba_in8(0x5b)&~0x80));
 bba_out8(0x5e, 0x01);
 bba_out8(0x5c, (bba_in8(0x5c)|0x04));

 __bba_recv_init();

 bba_ins(BBA_NAFR_PAR0,priv->ethaddr->addr, 6);

 bba_out8(BBA_IR,0xFF);
 bba_out8(BBA_IMR,0xFF&~BBA_IMR_FIFOEIM);

 bba_cmd_out8(0x02,BBA_CMD_IRMASKNONE);

 return UIP_ERR_OK;
}
