
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int kern_return_t ;
typedef TYPE_1__* ipc_port_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_3__ {int ip_guarded; int ip_strict_guard; scalar_t__ ip_context; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;

__attribute__((used)) static kern_return_t
mach_port_guard_locked(
 ipc_port_t port,
 uint64_t guard,
 boolean_t strict)
{
 if (port->ip_context)
  return KERN_INVALID_ARGUMENT;

 port->ip_context = guard;
 port->ip_guarded = 1;
 port->ip_strict_guard = (strict)?1:0;
 return KERN_SUCCESS;
}
