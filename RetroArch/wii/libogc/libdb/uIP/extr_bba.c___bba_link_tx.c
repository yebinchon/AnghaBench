
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct uip_pbuf {scalar_t__ tot_len; scalar_t__ len; int * payload; struct uip_pbuf* next; } ;
struct uip_netif {int dummy; } ;
typedef int s8_t ;


 scalar_t__ BBA_MINPKTSIZE ;
 int BBA_NCRA ;
 int BBA_NCRA_ST0 ;
 int BBA_NCRA_ST1 ;
 int BBA_TXFIFOCNT ;
 scalar_t__ BBA_TX_MAX_PACKET_SIZE ;
 int BBA_WRTXFIFOD ;
 int EXI_CHANNEL_0 ;
 int EXI_DEVICE_2 ;
 scalar_t__ EXI_Lock (int ,int ,int *) ;
 int EXI_Unlock (int ) ;
 int UIP_ERR_ABRT ;
 int UIP_ERR_IF ;
 int UIP_ERR_OK ;
 int UIP_ERR_PKTSIZE ;
 int UIP_LOG (char*) ;
 int __linkstate () ;
 int bba_deselect () ;
 int bba_in8 (int ) ;
 int bba_out12 (int ,scalar_t__) ;
 int bba_out8 (int ,int) ;
 int bba_outsdata (int *,scalar_t__) ;
 int bba_outsregister (int ) ;
 int bba_select () ;

__attribute__((used)) static s8_t __bba_link_tx(struct uip_netif *dev,struct uip_pbuf *p)
{
 u8 pad[60];
 u32 len;
 struct uip_pbuf *tmp;

 if(EXI_Lock(EXI_CHANNEL_0,EXI_DEVICE_2,((void*)0))==0) return UIP_ERR_IF;

 if(p->tot_len>BBA_TX_MAX_PACKET_SIZE) {
  UIP_LOG("__bba_link_tx: packet dropped due to big buffer.\n");
  EXI_Unlock(EXI_CHANNEL_0);
  return UIP_ERR_PKTSIZE;
 }

 if(!__linkstate()) {
  EXI_Unlock(EXI_CHANNEL_0);
  return UIP_ERR_ABRT;
 }

 while((bba_in8(BBA_NCRA)&(BBA_NCRA_ST0|BBA_NCRA_ST1)));

 len = p->tot_len;
 bba_out12(BBA_TXFIFOCNT,len);

 bba_select();
 bba_outsregister(BBA_WRTXFIFOD);
 for(tmp=p;tmp!=((void*)0);tmp=tmp->next) {
  bba_outsdata(tmp->payload,tmp->len);
 }
 if(len<BBA_MINPKTSIZE) {
  len = (BBA_MINPKTSIZE-len);
  bba_outsdata(pad,len);
 }
 bba_deselect();

 bba_out8(BBA_NCRA,((bba_in8(BBA_NCRA)&~BBA_NCRA_ST0)|BBA_NCRA_ST1));
 EXI_Unlock(EXI_CHANNEL_0);
 return UIP_ERR_OK;
}
