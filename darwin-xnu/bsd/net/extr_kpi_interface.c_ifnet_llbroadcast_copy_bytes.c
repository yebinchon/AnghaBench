
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__* ifnet_t ;
typedef int errno_t ;
struct TYPE_5__ {int ptr; int buffer; } ;
struct TYPE_6__ {size_t length; TYPE_1__ u; } ;
struct TYPE_7__ {TYPE_2__ if_broadcast; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int ENXIO ;
 int bcopy (int ,void*,int) ;

errno_t
ifnet_llbroadcast_copy_bytes(ifnet_t interface, void *addr, size_t buffer_len,
    size_t *out_len)
{
 if (interface == ((void*)0) || addr == ((void*)0) || out_len == ((void*)0))
  return (EINVAL);

 *out_len = interface->if_broadcast.length;

 if (buffer_len < interface->if_broadcast.length)
  return (EMSGSIZE);

 if (interface->if_broadcast.length == 0)
  return (ENXIO);

 if (interface->if_broadcast.length <=
     sizeof (interface->if_broadcast.u.buffer)) {
  bcopy(interface->if_broadcast.u.buffer, addr,
      interface->if_broadcast.length);
 } else {
  bcopy(interface->if_broadcast.u.ptr, addr,
      interface->if_broadcast.length);
 }

 return (0);
}
