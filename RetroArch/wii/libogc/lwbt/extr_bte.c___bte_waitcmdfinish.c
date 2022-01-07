
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bt_state {int last_err; int hci_cmdq; int hci_cmddone; } ;
typedef int s32 ;


 int ERR_VAL ;
 int LWP_ThreadSleep (int ) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;

__attribute__((used)) static inline s32 __bte_waitcmdfinish(struct bt_state *state)
{
 u32 level;
 s32 ret;

 if(!state) return ERR_VAL;

 _CPU_ISR_Disable(level);
 while(!state->hci_cmddone)
  LWP_ThreadSleep(state->hci_cmdq);
 ret = state->last_err;
 _CPU_ISR_Restore(level);

 return ret;
}
