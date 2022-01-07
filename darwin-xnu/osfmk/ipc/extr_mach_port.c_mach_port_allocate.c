
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_right_t ;
typedef int mach_port_qos_t ;
typedef int mach_port_name_t ;
typedef int kern_return_t ;
typedef int ipc_space_t ;


 int MACH_PORT_NULL ;
 int mach_port_allocate_full (int ,int ,int ,int *,int *) ;
 int qos_template ;

kern_return_t
mach_port_allocate(
 ipc_space_t space,
 mach_port_right_t right,
 mach_port_name_t *namep)
{
 kern_return_t kr;
 mach_port_qos_t qos = qos_template;

 kr = mach_port_allocate_full (space, right, MACH_PORT_NULL,
     &qos, namep);
 return (kr);
}
