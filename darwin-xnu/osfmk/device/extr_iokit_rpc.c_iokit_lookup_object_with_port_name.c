
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef int mach_port_name_t ;
typedef int ipc_kobject_type_t ;
typedef int io_object_t ;
struct TYPE_3__ {int itk_space; } ;


 int iokit_lookup_object_in_space_with_port_name (int ,int ,int ) ;

io_object_t
iokit_lookup_object_with_port_name(mach_port_name_t name, ipc_kobject_type_t type, task_t task)
{
    return (iokit_lookup_object_in_space_with_port_name(name, type, task->itk_space));
}
