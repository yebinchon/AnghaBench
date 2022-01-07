
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctrl_req_t {struct ctrl_req_t* next; int (* sent ) (int ,struct bte_pcb*,int ) ;int state; int err; } ;
struct bte_pcb {int * ctrl_req_tail; struct ctrl_req_t* ctrl_req_head; int cmdq; int cbarg; } ;


 int ERR_CLSD ;
 int LWP_ThreadSignal (int ) ;
 int STATE_DISCONNECTED ;
 int bte_ctrl_reqs ;
 int btmemb_free (int *,struct ctrl_req_t*) ;
 int stub1 (int ,struct bte_pcb*,int ) ;

__attribute__((used)) static inline void __bte_close_ctrl_queue(struct bte_pcb *pcb)
{
 struct ctrl_req_t *req;

 while(pcb->ctrl_req_head!=((void*)0)) {
  req = pcb->ctrl_req_head;
  req->err = ERR_CLSD;
  req->state = STATE_DISCONNECTED;
  if(req->sent!=((void*)0)) {
   req->sent(pcb->cbarg,pcb,ERR_CLSD);
   btmemb_free(&bte_ctrl_reqs,req);
  } else
   LWP_ThreadSignal(pcb->cmdq);

  pcb->ctrl_req_head = req->next;
 }
 pcb->ctrl_req_tail = ((void*)0);
}
