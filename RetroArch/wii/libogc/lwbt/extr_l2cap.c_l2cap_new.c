
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int outmtu; int influshto; int outflushto; int * opt; int cfgto; int inmtu; } ;
struct l2cap_pcb {TYPE_1__ cfg; int state; } ;


 int ERROR (char*) ;
 int L2CAP_CFG_TO ;
 int L2CAP_CLOSED ;
 int L2CAP_MTU ;
 struct l2cap_pcb* btmemb_alloc (int *) ;
 int l2cap_pcbs ;
 int memset (struct l2cap_pcb*,int ,int) ;

struct l2cap_pcb* l2cap_new(void)
{
 struct l2cap_pcb *pcb;

 pcb = btmemb_alloc(&l2cap_pcbs);
 if(pcb != ((void*)0)) {
  memset(pcb, 0, sizeof(struct l2cap_pcb));
  pcb->state = L2CAP_CLOSED;




  pcb->cfg.inmtu = L2CAP_MTU;
  pcb->cfg.outmtu = 672;





  pcb->cfg.influshto = 0xFFFF;
  pcb->cfg.outflushto = 0xFFFF;

  pcb->cfg.cfgto = L2CAP_CFG_TO;

  pcb->cfg.opt = ((void*)0);
  return pcb;
 }
 ERROR("l2cap_new: Could not allocate memory for pcb\n");
 return ((void*)0);
}
