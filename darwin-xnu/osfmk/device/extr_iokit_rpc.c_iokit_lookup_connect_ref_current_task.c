
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_name_t ;
typedef int io_object_t ;


 int IKOT_IOKIT_CONNECT ;
 int current_space () ;
 int iokit_lookup_object_in_space_with_port_name (int ,int ,int ) ;

io_object_t
iokit_lookup_connect_ref_current_task(mach_port_name_t name)
{
    return (iokit_lookup_object_in_space_with_port_name(name, IKOT_IOKIT_CONNECT, current_space()));
}
