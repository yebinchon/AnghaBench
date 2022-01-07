
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef int mach_port_name_t ;
typedef int mach_port_delta_t ;
typedef int kern_return_t ;
struct TYPE_3__ {int itk_space; } ;


 int MACH_PORT_RIGHT_SEND ;
 int mach_port_mod_refs (int ,int ,int ,int ) ;

kern_return_t
iokit_mod_send_right( task_t task, mach_port_name_t name, mach_port_delta_t delta )
{
    return (mach_port_mod_refs( task->itk_space, name, MACH_PORT_RIGHT_SEND, delta ));
}
