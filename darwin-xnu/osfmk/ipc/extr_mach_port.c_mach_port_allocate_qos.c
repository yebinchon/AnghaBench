
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mach_port_right_t ;
struct TYPE_4__ {scalar_t__ name; } ;
typedef TYPE_1__ mach_port_qos_t ;
typedef int mach_port_name_t ;
typedef int kern_return_t ;
typedef int ipc_space_t ;


 int KERN_INVALID_ARGUMENT ;
 int MACH_PORT_NULL ;
 int mach_port_allocate_full (int ,int ,int ,TYPE_1__*,int *) ;

kern_return_t
mach_port_allocate_qos(
 ipc_space_t space,
 mach_port_right_t right,
 mach_port_qos_t *qosp,
 mach_port_name_t *namep)
{
 kern_return_t kr;

 if (qosp->name)
  return KERN_INVALID_ARGUMENT;
 kr = mach_port_allocate_full (space, right, MACH_PORT_NULL,
     qosp, namep);
 return (kr);
}
