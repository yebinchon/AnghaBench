
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int memory_object_default_t ;


 int ipc_port_make_send (int ) ;

void
memory_object_default_reference(
 memory_object_default_t dmm)
{
 ipc_port_make_send(dmm);
}
