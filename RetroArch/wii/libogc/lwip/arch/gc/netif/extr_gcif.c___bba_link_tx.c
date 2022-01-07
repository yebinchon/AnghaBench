
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pbuf {scalar_t__ tot_len; int len; int payload; struct pbuf* next; } ;
struct netif {scalar_t__ state; } ;
struct bba_priv {int dummy; } ;
typedef int err_t ;


 int BBA_MINPKTSIZE ;
 int BBA_NCRA ;
 int BBA_NCRA_ST0 ;
 int BBA_NCRA_ST1 ;
 int BBA_TXFIFOCNT ;
 scalar_t__ BBA_TX_MAX_PACKET_SIZE ;
 int BBA_WRTXFIFOD ;
 int ERR_ABRT ;
 int ERR_OK ;
 int ERR_PKTSIZE ;
 int LWIP_DEBUGF (int ,char*) ;
 int LWIP_ERROR (char*) ;
 int LWP_GetSelf () ;
 int NETIF_DEBUG ;
 int __bba_exi_stop (struct bba_priv*) ;
 int __bba_exi_wake (struct bba_priv*) ;
 int __bba_tx_stop (struct bba_priv*) ;
 int __bba_tx_wake (struct bba_priv*) ;
 int __linkstate (struct bba_priv*) ;
 int bba_deselect () ;
 int bba_in8 (int ) ;
 int bba_out12 (int ,scalar_t__) ;
 int bba_out8 (int ,int) ;
 int bba_outsdata (int *,int) ;
 int bba_outsdata_fast (int ,int ) ;
 int bba_outsregister (int ) ;
 int bba_select () ;

__attribute__((used)) static err_t __bba_link_tx(struct netif *dev,struct pbuf *p)
{
 u8 tmpbuf[BBA_MINPKTSIZE];
 struct pbuf *tmp;
 struct bba_priv *priv = (struct bba_priv*)dev->state;

 __bba_tx_stop(priv);
 __bba_exi_stop(priv);

 if(p->tot_len>BBA_TX_MAX_PACKET_SIZE) {
  LWIP_ERROR(("__bba_link_tx(%d,%p) pkt_size\n",p->tot_len,LWP_GetSelf()));
  __bba_tx_wake(priv);
  __bba_exi_wake(priv);
  return ERR_PKTSIZE;
 }

 if(!__linkstate(priv)) {
  LWIP_ERROR(("__bba_link_tx(error link state)\n"));
  __bba_tx_wake(priv);
  __bba_exi_wake(priv);
  return ERR_ABRT;
 }

 LWIP_DEBUGF(NETIF_DEBUG,("__bba_link_tx(%d,%p)\n",p->tot_len,LWP_GetSelf()));

 bba_out12(BBA_TXFIFOCNT,p->tot_len);

 bba_select();
 bba_outsregister(BBA_WRTXFIFOD);
 for(tmp=p;tmp!=((void*)0);tmp=tmp->next) {
  bba_outsdata_fast(tmp->payload,tmp->len);
 }
 if(p->tot_len<BBA_MINPKTSIZE) bba_outsdata(tmpbuf,(BBA_MINPKTSIZE-p->tot_len));
 bba_deselect();

 bba_out8(BBA_NCRA,((bba_in8(BBA_NCRA)&~BBA_NCRA_ST0)|BBA_NCRA_ST1));
 __bba_exi_wake(priv);
 return ERR_OK;
}
