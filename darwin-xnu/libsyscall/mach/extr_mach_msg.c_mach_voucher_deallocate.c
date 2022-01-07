
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_voucher_t ;
typedef int kern_return_t ;


 int mach_port_deallocate (int ,int ) ;
 int mach_task_self () ;

kern_return_t
mach_voucher_deallocate(
 mach_voucher_t voucher)
{
 return mach_port_deallocate(mach_task_self(), voucher);
}
