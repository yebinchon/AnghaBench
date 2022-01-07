
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ipc_port_t ;
typedef scalar_t__ ipc_object_t ;


 unsigned int IOT_PORT ;
 int io_lock_destroy (scalar_t__) ;
 int * ipc_object_zones ;
 int ipc_port_finalize (scalar_t__) ;
 int zfree (int ,scalar_t__) ;

void
io_free(
 unsigned int otype,
 ipc_object_t object)
{
 ipc_port_t port;

 if (otype == IOT_PORT) {
  port = (ipc_port_t) object;
  ipc_port_finalize(port);
 }
 io_lock_destroy(object);
 zfree(ipc_object_zones[otype], object);
}
