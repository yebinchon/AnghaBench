
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mach_port_right_t ;
struct TYPE_4__ {int name; } ;
typedef TYPE_1__ mach_port_qos_t ;
typedef int mach_port_name_t ;
typedef int kern_return_t ;
typedef int ipc_space_t ;


 int KERN_INVALID_VALUE ;
 int MACH_PORT_NULL ;
 int MACH_PORT_VALID (int ) ;
 int TRUE ;
 int mach_port_allocate_full (int ,int ,int ,TYPE_1__*,int *) ;
 TYPE_1__ qos_template ;

kern_return_t
mach_port_allocate_name(
 ipc_space_t space,
 mach_port_right_t right,
 mach_port_name_t name)
{
 kern_return_t kr;
 mach_port_qos_t qos = qos_template;

 qos.name = TRUE;

 if (!MACH_PORT_VALID(name))
  return KERN_INVALID_VALUE;

 kr = mach_port_allocate_full (space, right, MACH_PORT_NULL,
     &qos, &name);
 return (kr);
}
