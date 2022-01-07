
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 size_t NUM_KERNEL_STATUS ;
 int OSLock (int ) ;
 int * kernel_status_lock ;

void LockKernelStatus(UINT id)
{

 if (id >= NUM_KERNEL_STATUS)
 {
  return;
 }

 OSLock(kernel_status_lock[id]);
}
