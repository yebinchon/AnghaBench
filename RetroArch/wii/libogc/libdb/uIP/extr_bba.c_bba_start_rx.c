
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct uip_pbuf {scalar_t__ payload; struct uip_pbuf* next; } ;
struct uip_netif {int dummy; } ;
struct bba_descr {int dummy; } ;
typedef int s8_t ;
typedef scalar_t__ s32 ;
struct TYPE_2__ {scalar_t__ packet_len; scalar_t__ status; int next_packet_ptr; } ;


 int BBA_INIT_RHBP ;
 int BBA_INIT_RRP ;
 int BBA_RRP ;
 int BBA_RWP ;
 scalar_t__ BBA_RX_MAX_PACKET_SIZE ;
 scalar_t__ BBA_RX_STATUS_FAE ;
 scalar_t__ BBA_RX_STATUS_RERR ;
 int EXI_CHANNEL_0 ;
 int EXI_DEVICE_2 ;
 int EXI_Lock (int ,int ,int *) ;
 int EXI_Unlock (int ) ;
 int UIP_ERR_OK ;
 int UIP_LOG (char*) ;
 int UIP_PBUF_POOL ;
 int UIP_PBUF_RAW ;
 int bba_deselect () ;
 int bba_in12 (int ) ;
 int bba_ins (int,void*,int) ;
 int bba_insdata (scalar_t__,scalar_t__) ;
 int bba_insregister (int) ;
 int bba_out12 (int ,int) ;
 int bba_process (struct uip_pbuf*,struct uip_netif*) ;
 int bba_select () ;
 TYPE_1__ cur_descr ;
 int le32_to_cpus (scalar_t__*) ;
 struct uip_pbuf* uip_pbuf_alloc (int ,scalar_t__,int ) ;

__attribute__((used)) static s8_t bba_start_rx(struct uip_netif *dev,u32 budget)
{
 s32 size;
 u16 top,pos,rwp,rrp;
 u32 pkt_status,recvd;
 struct uip_pbuf *p,*q;

 UIP_LOG("bba_start_rx()\n");

 recvd = 0;
 rwp = bba_in12(BBA_RWP);
 rrp = bba_in12(BBA_RRP);
 while(recvd<budget && rrp!=rwp) {
  bba_ins(rrp<<8,(void*)(&cur_descr),sizeof(struct bba_descr));
  le32_to_cpus((u32*)((void*)(&cur_descr)));

  size = cur_descr.packet_len - 4;
  pkt_status = cur_descr.status;
  if(size>(BBA_RX_MAX_PACKET_SIZE+4)) {
   UIP_LOG("bba_start_rx: packet dropped due to big buffer.\n");
   continue;
  }

  if(pkt_status&(BBA_RX_STATUS_RERR|BBA_RX_STATUS_FAE)) {
   UIP_LOG("bba_start_rx: packet dropped due to receive errors.\n");
   rwp = bba_in12(BBA_RWP);
   rrp = bba_in12(BBA_RRP);
   continue;
  }

  pos = (rrp<<8)+4;
  top = (BBA_INIT_RHBP+1)<<8;

  p = uip_pbuf_alloc(UIP_PBUF_RAW,size,UIP_PBUF_POOL);
  if(p) {
   for(q=p;q!=((void*)0);q=q->next) {
    bba_select();
    bba_insregister(pos);
    if((pos+size)<top) {
     bba_insdata(q->payload,size);
    } else {
     s32 chunk = top-pos;

     size -= chunk;
     pos = BBA_INIT_RRP<<8;
     bba_insdata(q->payload,chunk);
     bba_deselect();

     bba_select();
     bba_insregister(pos);
     bba_insdata(q->payload+chunk,size);
    }
    bba_deselect();
    pos += size;
   }

   EXI_Unlock(EXI_CHANNEL_0);
   bba_process(p,dev);
   EXI_Lock(EXI_CHANNEL_0,EXI_DEVICE_2,((void*)0));
  } else
   break;

  recvd++;

  bba_out12(BBA_RRP,(rrp=cur_descr.next_packet_ptr));
  rwp = bba_in12(BBA_RWP);
 }
 return UIP_ERR_OK;
}
