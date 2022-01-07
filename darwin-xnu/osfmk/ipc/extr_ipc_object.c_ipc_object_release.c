
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipc_object_t ;


 int io_release (int ) ;

void
ipc_object_release(
 ipc_object_t object)
{
 io_release(object);
}
