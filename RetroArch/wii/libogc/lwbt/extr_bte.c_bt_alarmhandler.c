
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int syswd_t ;


 size_t STACKSIZE ;
 int SYS_SwitchFiber (int ,int ,int ,int ,int ,int ) ;
 int __lwp_thread_dispatchdisable () ;
 int __lwp_thread_dispatchunnest () ;
 scalar_t__ l2cap_tmr ;
 int * ppc_stack ;

__attribute__((used)) static void bt_alarmhandler(syswd_t alarm,void *cbarg)
{
 __lwp_thread_dispatchdisable();
 SYS_SwitchFiber(0,0,0,0,(u32)l2cap_tmr,(u32)(&ppc_stack[STACKSIZE]));
 __lwp_thread_dispatchunnest();
}
