
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctrl_req_t {int (* sent ) (int ,struct bte_pcb*,scalar_t__) ;int state; scalar_t__ err; struct ctrl_req_t* next; int p; } ;
struct bte_pcb {scalar_t__ state; int cmdq; int cbarg; struct ctrl_req_t* ctrl_req_head; int ctl_pcb; } ;
typedef scalar_t__ s32 ;


 scalar_t__ ERR_CLSD ;
 scalar_t__ ERR_OK ;
 int LWP_ThreadSignal (int ) ;
 scalar_t__ STATE_DISCONNECTED ;
 scalar_t__ STATE_DISCONNECTING ;
 int STATE_FAILED ;
 int STATE_SENDING ;
 int bte_ctrl_reqs ;
 int btmemb_free (int *,struct ctrl_req_t*) ;
 int btpbuf_free (int ) ;
 scalar_t__ l2ca_datawrite (int ,int ) ;
 int stub1 (int ,struct bte_pcb*,scalar_t__) ;

__attribute__((used)) static s32 __bte_send_pending_request(struct bte_pcb *pcb)
{
 s32 err;
 struct ctrl_req_t *req;

 if(pcb->ctrl_req_head==((void*)0)) return ERR_OK;
 if(pcb->state==STATE_DISCONNECTING || pcb->state==STATE_DISCONNECTED) return ERR_CLSD;

 req = pcb->ctrl_req_head;
 req->state = STATE_SENDING;

 err = l2ca_datawrite(pcb->ctl_pcb,req->p);
 btpbuf_free(req->p);

 if(err!=ERR_OK) {
  pcb->ctrl_req_head = req->next;

  req->err = err;
  req->state = STATE_FAILED;
  if(req->sent) {
   req->sent(pcb->cbarg,pcb,err);
   btmemb_free(&bte_ctrl_reqs,req);
  } else
   LWP_ThreadSignal(pcb->cmdq);
 }

 return err;
}
