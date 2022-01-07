
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_mscount_t ;
typedef int ipc_port_t ;


 int mach_notify_no_senders (int ,int ) ;

void
ipc_notify_no_senders(
 ipc_port_t port,
 mach_port_mscount_t mscount)
{
 (void)mach_notify_no_senders(port, mscount);

}
