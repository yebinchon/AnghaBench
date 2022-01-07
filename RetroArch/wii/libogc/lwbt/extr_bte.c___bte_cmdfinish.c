
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bt_state {int hci_cmddone; int hci_cmdq; int usrdata; int (* cb ) (int ,int ) ;int last_err; } ;
typedef int s32 ;
typedef int err_t ;


 int ERR_VAL ;
 int LWP_ThreadSignal (int ) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static inline s32 __bte_cmdfinish(struct bt_state *state,err_t err)
{
 u32 level;

 if(!state) return ERR_VAL;

 _CPU_ISR_Disable(level);
 state->last_err = err;
 state->hci_cmddone = 1;
 if(state->cb!=((void*)0))
  state->cb(err,state->usrdata);
 else
  LWP_ThreadSignal(state->hci_cmdq);
 _CPU_ISR_Restore(level);

 return err;
}
