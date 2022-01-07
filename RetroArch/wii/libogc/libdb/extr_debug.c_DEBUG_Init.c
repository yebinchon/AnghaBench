
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u32 ;
typedef int u16 ;
struct uip_ip_addr {void* addr; } ;
typedef scalar_t__ s32 ;


 int EX_DSI ;
 int EX_IABR ;
 int EX_PRG ;
 int EX_TRACE ;
 scalar_t__ GDBSTUB_DEVICE_USB ;
 int UIP_LOG (char*) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __exception_sethandler (int ,int ) ;
 int __lwp_thread_dispatchdisable () ;
 int __lwp_thread_dispatchenable () ;
 int bp_init () ;
 int * current_device ;
 int dbg_exceptionhandler ;
 int dbg_initialized ;
 scalar_t__ tcp_gateway ;
 scalar_t__ tcp_localip ;
 scalar_t__ tcp_netmask ;
 int * tcpip_init (struct uip_ip_addr*,struct uip_ip_addr*,struct uip_ip_addr*,int ) ;
 void* uip_ipaddr (int const*) ;
 int * usb_init (scalar_t__) ;

void DEBUG_Init(s32 device_type,s32 channel_port)
{
 u32 level;
 struct uip_ip_addr localip,netmask,gateway;

 UIP_LOG("DEBUG_Init()\n");

 __lwp_thread_dispatchdisable();

 bp_init();

 if(device_type==GDBSTUB_DEVICE_USB) {
  current_device = usb_init(channel_port);
 } else {
  localip.addr = uip_ipaddr((const u8_t*)tcp_localip);
  netmask.addr = uip_ipaddr((const u8_t*)tcp_netmask);
  gateway.addr = uip_ipaddr((const u8_t*)tcp_gateway);

  current_device = tcpip_init(&localip,&netmask,&gateway,(u16)channel_port);
 }

 if(current_device!=((void*)0)) {
  _CPU_ISR_Disable(level);
  __exception_sethandler(EX_DSI,dbg_exceptionhandler);
  __exception_sethandler(EX_PRG,dbg_exceptionhandler);
  __exception_sethandler(EX_TRACE,dbg_exceptionhandler);
  __exception_sethandler(EX_IABR,dbg_exceptionhandler);
  _CPU_ISR_Restore(level);

  dbg_initialized = 1;

 }
 __lwp_thread_dispatchenable();
}
