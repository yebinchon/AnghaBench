
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
struct bt_state {int dummy; } ;
struct TYPE_3__ {int timer_svc; int hci_cmdq; } ;


 int LOG (char*) ;
 int LWP_InitQueue (int *) ;
 int SYS_CreateAlarm (int *) ;
 int SYS_SetPeriodicAlarm (int ,struct timespec*,struct timespec*,int ,int *) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int acl_conn_complete ;
 int acl_wlp_completed ;
 int bt_alarmhandler ;
 int bte_reset_all () ;
 TYPE_1__ btstate ;
 int hci_connection_complete (int ) ;
 int hci_init () ;
 int hci_reset_all () ;
 int hci_wlp_complete (int ) ;
 int l2cap_init () ;
 int l2cap_reset_all () ;
 int memset (TYPE_1__*,int ,int) ;
 int physbusif_init () ;
 int physbusif_reset_all () ;

void BTE_Init()
{
 u32 level;
 struct timespec tb;

 LOG("BTE_Init()\n");

 memset(&btstate,0,sizeof(struct bt_state));

 hci_init();
 l2cap_init();
 physbusif_init();

 LWP_InitQueue(&btstate.hci_cmdq);
 SYS_CreateAlarm(&btstate.timer_svc);

 _CPU_ISR_Disable(level);
 bte_reset_all();
 hci_reset_all();
 l2cap_reset_all();
 physbusif_reset_all();

 hci_wlp_complete(acl_wlp_completed);
 hci_connection_complete(acl_conn_complete);
 _CPU_ISR_Restore(level);

 tb.tv_sec = 1;
 tb.tv_nsec = 0;
 SYS_SetPeriodicAlarm(btstate.timer_svc,&tb,&tb,bt_alarmhandler, ((void*)0));
}
