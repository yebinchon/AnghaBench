
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipc_port_t ;
typedef int io_object_t ;


 int IKOT_IOKIT_CONNECT ;
 int iokit_make_port_of_type (int ,int ) ;

ipc_port_t
iokit_make_connect_port(
 io_object_t obj )
{
    return (iokit_make_port_of_type(obj, IKOT_IOKIT_CONNECT));
}
