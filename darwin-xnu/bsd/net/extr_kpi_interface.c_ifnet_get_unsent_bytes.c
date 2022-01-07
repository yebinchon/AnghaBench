
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
typedef TYPE_1__* ifnet_t ;
typedef int errno_t ;
struct TYPE_4__ {int if_eflags; int if_snd; scalar_t__ if_sndbyte_unsent; } ;


 int EINVAL ;
 int ENXIO ;
 scalar_t__ IFCQ_BYTES (int *) ;
 int IFEF_TXSTART ;
 int IF_FULLY_ATTACHED (TYPE_1__*) ;

errno_t
ifnet_get_unsent_bytes(ifnet_t interface, int64_t *unsent_bytes)
{
 int64_t bytes;

 if (interface == ((void*)0) || unsent_bytes == ((void*)0))
  return (EINVAL);

 bytes = *unsent_bytes = 0;

 if (!IF_FULLY_ATTACHED(interface))
  return (ENXIO);

 bytes = interface->if_sndbyte_unsent;

 if (interface->if_eflags & IFEF_TXSTART)
  bytes += IFCQ_BYTES(&interface->if_snd);
 *unsent_bytes = bytes;

 return (0);
}
