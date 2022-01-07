
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int s32 ;
typedef int btecallback ;
struct TYPE_3__ {scalar_t__ hci_cmddone; int * usrdata; int cb; } ;


 int ERR_OK ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int bte_hci_initcore_complete ;
 TYPE_1__ btstate ;
 int hci_arg (TYPE_1__*) ;
 int hci_cmd_complete (int ) ;
 int hci_reset () ;

s32 BTE_InitCore(btecallback cb)
{
 u32 level;

 _CPU_ISR_Disable(level);
 btstate.cb = cb;
 btstate.usrdata = ((void*)0);
 btstate.hci_cmddone = 0;
 hci_arg(&btstate);
 hci_cmd_complete(bte_hci_initcore_complete);
 hci_reset();
 _CPU_ISR_Restore(level);

 return ERR_OK;
}
