
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct bd_addr {int dummy; } ;
typedef int s32 ;
typedef int btecallback ;
struct TYPE_3__ {scalar_t__ hci_cmddone; struct bd_addr* usrdata; int cb; } ;


 int ERR_OK ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int bte_read_bd_addr_complete ;
 TYPE_1__ btstate ;
 int hci_arg (TYPE_1__*) ;
 int hci_cmd_complete (int ) ;
 int hci_read_bd_addr () ;

s32 BTE_ReadBdAddr(struct bd_addr *bdaddr, btecallback cb)
{
    u32 level;

    _CPU_ISR_Disable(level);
    btstate.cb = cb;
    btstate.usrdata = bdaddr;
    btstate.hci_cmddone = 0;
    hci_arg(&btstate);
    hci_cmd_complete(bte_read_bd_addr_complete);
    hci_read_bd_addr();
    _CPU_ISR_Restore(level);

    return ERR_OK;
}
