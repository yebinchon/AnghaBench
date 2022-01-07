
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int mach_port_name_t ;
typedef int kern_return_t ;
typedef TYPE_1__* ipc_port_t ;
struct TYPE_3__ {scalar_t__ ip_context; scalar_t__ ip_strict_guard; scalar_t__ ip_guarded; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int kGUARD_EXC_INCORRECT_GUARD ;
 int kGUARD_EXC_UNGUARDED ;
 int mach_port_guard_exception (int ,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static kern_return_t
mach_port_unguard_locked(
 ipc_port_t port,
 mach_port_name_t name,
 uint64_t guard)
{

 if (!port->ip_guarded) {

  mach_port_guard_exception(name, guard, 0, kGUARD_EXC_UNGUARDED);
  return KERN_INVALID_ARGUMENT;
 }

 if (port->ip_context != guard) {

  mach_port_guard_exception(name, guard, port->ip_context, kGUARD_EXC_INCORRECT_GUARD);
  return KERN_INVALID_ARGUMENT;
 }

 port->ip_context = 0;
 port->ip_guarded = port->ip_strict_guard = 0;
 return KERN_SUCCESS;
}
