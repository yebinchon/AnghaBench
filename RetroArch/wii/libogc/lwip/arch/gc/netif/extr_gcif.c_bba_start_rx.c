
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct pbuf {scalar_t__ len; scalar_t__ payload; struct pbuf* next; } ;
struct netif {int (* input ) (struct pbuf*,struct netif*) ;scalar_t__ state; } ;
struct bba_priv {int flag; } ;
struct bba_descr {int dummy; } ;
typedef scalar_t__ s32 ;
typedef int err_t ;
struct TYPE_2__ {scalar_t__ packet_len; scalar_t__ status; int next_packet_ptr; } ;


 int BBA_IMR ;
 int BBA_IMR_RBFIM ;
 int BBA_INIT_RHBP ;
 int BBA_INIT_RRP ;
 int BBA_IR_RBFI ;
 int BBA_RRP ;
 int BBA_RWP ;
 scalar_t__ BBA_RX_MAX_PACKET_SIZE ;
 scalar_t__ BBA_RX_STATUS_FAE ;
 scalar_t__ BBA_RX_STATUS_RERR ;
 int ERR_OK ;
 int LWIP_DEBUGF (int,char*) ;
 int NETIF_DEBUG ;
 int PBUF_POOL ;
 int PBUF_RAW ;
 int __bba_rx_err (scalar_t__,struct bba_priv*) ;
 int bba_deselect () ;
 int bba_in12 (int ) ;
 int bba_in8 (int ) ;
 int bba_ins (int,void*,int) ;
 int bba_insdata_fast (scalar_t__,scalar_t__) ;
 int bba_insregister (int) ;
 int bba_out12 (int ,int) ;
 int bba_out8 (int ,int) ;
 int bba_select () ;
 TYPE_1__ cur_descr ;
 int le32_to_cpus (scalar_t__*) ;
 struct pbuf* pbuf_alloc (int ,scalar_t__,int ) ;
 int stub1 (struct pbuf*,struct netif*) ;

__attribute__((used)) static err_t bba_start_rx(struct netif *dev,u32 budget)
{
 s32 size;
 u16 top,pos,rrp,rwp;
 u32 pkt_status,recvd;
 struct pbuf *tmp,*p = ((void*)0);
 struct bba_priv *priv = (struct bba_priv*)dev->state;

 LWIP_DEBUGF(NETIF_DEBUG,("bba_start_rx()\n"));

 recvd = 0;
 rwp = bba_in12(BBA_RWP);
 rrp = bba_in12(BBA_RRP);
 while(recvd<budget && rrp!=rwp) {
  LWIP_DEBUGF(NETIF_DEBUG,("bba_start_rx(%04x,%04x)\n",rrp,rwp));
  bba_ins(rrp<<8,(void*)(&cur_descr),sizeof(struct bba_descr));
  le32_to_cpus((u32*)((void*)(&cur_descr)));

  size = (cur_descr.packet_len-4);
  pkt_status = cur_descr.status;
  if(size>(BBA_RX_MAX_PACKET_SIZE+4)) {
   LWIP_DEBUGF(NETIF_DEBUG|2,("bba_start_rx(size>BBA_RX_MAX_PACKET_SIZE)\n"));
   continue;
  }

  if(pkt_status&(BBA_RX_STATUS_RERR|BBA_RX_STATUS_FAE)) {
   LWIP_DEBUGF(NETIF_DEBUG|2,("bba_start_rx(pkt_status = 02x)\n",pkt_status));
   __bba_rx_err(pkt_status,priv);
   rwp = bba_in12(BBA_RWP);
   rrp = bba_in12(BBA_RRP);
   continue;
  }

  pos = ((rrp<<8)+4);
  top = ((BBA_INIT_RHBP+1)<<8);
  LWIP_DEBUGF(NETIF_DEBUG,("bba_start_rx(%04x,%d,%04x)\n",pos,size,top));

  p = pbuf_alloc(PBUF_RAW,size,PBUF_POOL);
  if(p) {
   for(tmp=p;tmp!=((void*)0);tmp=tmp->next) {
    size = tmp->len;

    bba_select();
    bba_insregister(pos);
    if((pos+size)<top) {
     bba_insdata_fast(tmp->payload,size);
    } else {
     s32 chunk_size = (top-pos);

     size -= chunk_size;
     pos = (BBA_INIT_RRP<<8);
     bba_insdata_fast(tmp->payload,chunk_size);
     bba_deselect();
     bba_select();
     bba_insregister(pos);
     bba_insdata_fast(tmp->payload+chunk_size,size);
    }
    bba_deselect();
    pos += size;
   }
   dev->input(p,dev);
  } else
   break;

  recvd++;
  bba_out12(BBA_RRP,(rrp=cur_descr.next_packet_ptr));
  rwp = bba_in12(BBA_RWP);
 }
 if(priv->flag&BBA_IR_RBFI) {
  priv->flag &= ~BBA_IR_RBFI;
  bba_out8(BBA_IMR,(bba_in8(BBA_IMR)|BBA_IMR_RBFIM));
 }

 LWIP_DEBUGF(NETIF_DEBUG,("bba_start_rx(rx interrupt close)\n"));
 return ERR_OK;
}
