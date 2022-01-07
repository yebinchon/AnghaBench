
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ctrl_req_t {scalar_t__ state; int err; TYPE_1__* pcb; } ;
typedef int s32 ;
struct TYPE_2__ {int cmdq; } ;


 int ERR_VAL ;
 int LWP_ThreadSleep (int ) ;
 scalar_t__ STATE_FAILED ;
 scalar_t__ STATE_SENT ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;

__attribute__((used)) static inline s32 __bte_waitrequest(struct ctrl_req_t *req)
{
 s32 err;
 u32 level;

 if(!req || !req->pcb) return ERR_VAL;

 _CPU_ISR_Disable(level);
 while(req->state!=STATE_SENT
  && req->state!=STATE_FAILED)
 {
  LWP_ThreadSleep(req->pcb->cmdq);
 }
 err = req->err;
 _CPU_ISR_Restore(level);

 return err;
}
