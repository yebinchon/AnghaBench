
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u16_t ;
struct ctrl_req_t {int (* sent ) (int ,struct bte_pcb*,int ) ;int state; int err; struct ctrl_req_t* next; } ;
struct bte_pcb {int cmdq; int cbarg; struct ctrl_req_t* ctrl_req_head; } ;


 int ERR_OK ;







 int LOG (char*,struct bte_pcb*) ;
 int LWP_ThreadSignal (int ) ;
 int STATE_SENT ;
 int __bte_send_pending_request (struct bte_pcb*) ;
 int bte_ctrl_reqs ;
 int btmemb_free (int *,struct ctrl_req_t*) ;
 int stub1 (int ,struct bte_pcb*,int ) ;

__attribute__((used)) static void bte_process_handshake(struct bte_pcb *pcb,u8_t param,void *buf,u16_t len)
{
 struct ctrl_req_t *req;

 LOG("bte_process_handshake(%p)\n",pcb);

 switch(param) {
  case 129:
   req = pcb->ctrl_req_head;
   pcb->ctrl_req_head = req->next;

   req->err = ERR_OK;
   req->state = STATE_SENT;
   if(req->sent) {
    req->sent(pcb->cbarg,pcb,ERR_OK);
    btmemb_free(&bte_ctrl_reqs,req);
   } else
    LWP_ThreadSignal(pcb->cmdq);

   __bte_send_pending_request(pcb);
   break;
  case 131:
  case 133:
  case 130:
  case 132:
  case 128:
   break;
  case 134:
   break;
  default:
   break;
 }
}
