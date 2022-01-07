
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ctrl_req_t {TYPE_1__* pcb; struct ctrl_req_t* next; int state; int err; } ;
typedef int s32 ;
struct TYPE_2__ {struct ctrl_req_t* ctrl_req_tail; struct ctrl_req_t* ctrl_req_head; } ;


 int ERR_OK ;
 int ERR_VAL ;
 int STATE_READY ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __bte_send_pending_request (TYPE_1__*) ;

__attribute__((used)) static s32 __bte_send_request(struct ctrl_req_t *req)
{
 s32 err;
 u32 level;

 req->next = ((void*)0);
 req->err = ERR_VAL;
 req->state = STATE_READY;

 _CPU_ISR_Disable(level);
 if(req->pcb->ctrl_req_head==((void*)0)) {
  req->pcb->ctrl_req_head = req->pcb->ctrl_req_tail = req;
  err = __bte_send_pending_request(req->pcb);
 } else {
  req->pcb->ctrl_req_tail->next = req;
  req->pcb->ctrl_req_tail = req;
  err = ERR_OK;
 }
 _CPU_ISR_Restore(level);

 return err;
}
