
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mach_msg_size_t ;
typedef int ipc_kmsg_t ;


 int IKM_NULL ;
 scalar_t__ LEGACY_HEADER_SIZE_DELTA ;
 scalar_t__ MACH_MSG_SIZE_MAX ;
 int ipc_kmsg_alloc (scalar_t__) ;

ipc_kmsg_t
ipc_kmsg_prealloc(mach_msg_size_t size)
{

 if (size > MACH_MSG_SIZE_MAX - LEGACY_HEADER_SIZE_DELTA)
  return IKM_NULL;

 size += LEGACY_HEADER_SIZE_DELTA;

 return ipc_kmsg_alloc(size);
}
