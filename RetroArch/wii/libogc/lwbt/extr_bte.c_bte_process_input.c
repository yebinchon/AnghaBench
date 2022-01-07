
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pbuf {int* payload; int tot_len; } ;
struct l2cap_pcb {int dummy; } ;
struct bte_pcb {scalar_t__ state; } ;
typedef int err_t ;


 int ERR_CLSD ;
 int ERR_OK ;
 int HIDP_HDR_PARAM_MASK ;
 int HIDP_HDR_TRANS_MASK ;



 int LOG (char*,struct bte_pcb*,struct pbuf*) ;
 scalar_t__ STATE_DISCONNECTED ;
 scalar_t__ STATE_DISCONNECTING ;
 int bte_process_data (struct bte_pcb*,int,int*,int ) ;
 int bte_process_handshake (struct bte_pcb*,int,int*,int ) ;

__attribute__((used)) static err_t bte_process_input(void *arg,struct l2cap_pcb *pcb,struct pbuf *p,err_t err)
{
 u8 *buf;
 u16 len;
 u8 hdr,type,param;
 struct bte_pcb *bte = (struct bte_pcb*)arg;

 LOG("bte_process_input(%p,%p)\n",bte,p);

 if(bte->state==STATE_DISCONNECTING
  || bte->state==STATE_DISCONNECTED) return ERR_CLSD;

 buf = p->payload;
 len = p->tot_len;

 len--;
 hdr = *buf++;
 type = (hdr&HIDP_HDR_TRANS_MASK);
 param = (hdr&HIDP_HDR_PARAM_MASK);
 switch(type) {
  case 129:
   bte_process_handshake(bte,param,buf,len);
   break;
  case 128:
   break;
  case 130:
   bte_process_data(bte,param,buf,len);
   break;
  default:
   break;
 }
 return ERR_OK;
}
