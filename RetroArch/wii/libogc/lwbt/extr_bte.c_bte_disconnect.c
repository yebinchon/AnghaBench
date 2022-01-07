
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bte_pcb {int * ctl_pcb; int * data_pcb; scalar_t__ state; } ;
typedef int s32 ;
typedef int err_t ;


 int ERR_OK ;
 int ERR_VAL ;
 scalar_t__ STATE_DISCONNECTING ;
 int _CPU_ISR_Disable (scalar_t__) ;
 int _CPU_ISR_Restore (scalar_t__) ;
 int l2ca_disconnect_req (int *,int ) ;
 int l2cap_disconnect_cfm ;

s32 bte_disconnect(struct bte_pcb *pcb)
{
 u32 level;
 err_t err = ERR_OK;

 if(pcb==((void*)0)) return ERR_VAL;

 _CPU_ISR_Disable(level);
 pcb->state = (u32)STATE_DISCONNECTING;
 if(pcb->data_pcb!=((void*)0) )
  err = l2ca_disconnect_req(pcb->data_pcb,l2cap_disconnect_cfm);
 else if(pcb->ctl_pcb!=((void*)0))
  err = l2ca_disconnect_req(pcb->ctl_pcb,l2cap_disconnect_cfm);
 _CPU_ISR_Restore(level);

 return err;
}
