
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ hci_inited; scalar_t__ hci_cmddone; int * usrdata; int * cb; int timer_svc; } ;


 int LOG (char*) ;
 int SYS_RemoveAlarm (int ) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __bte_shutdown_finished ;
 int __bte_waitcmdfinish (TYPE_1__*) ;
 TYPE_1__ btstate ;
 int hci_arg (TYPE_1__*) ;
 int hci_cmd_complete (int ) ;
 int hci_reset () ;
 int physbusif_shutdown () ;

void BTE_Shutdown()
{
 u32 level;

 if(btstate.hci_inited==0) return;

 LOG("BTE_Shutdown()\n");

 _CPU_ISR_Disable(level);
 SYS_RemoveAlarm(btstate.timer_svc);
 btstate.cb = ((void*)0);
 btstate.usrdata = ((void*)0);
 btstate.hci_cmddone = 0;
 hci_arg(&btstate);
 hci_cmd_complete(__bte_shutdown_finished);
 hci_reset();
 __bte_waitcmdfinish(&btstate);
 _CPU_ISR_Restore(level);

 physbusif_shutdown();
}
