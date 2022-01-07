
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 size_t NUM_KERNEL_STATUS ;
 int OSUnlock (int ) ;
 int * kernel_status_lock ;

void UnlockKernelStatus(UINT id)
{

 if (id >= NUM_KERNEL_STATUS)
 {
  return;
 }

 OSUnlock(kernel_status_lock[id]);
}
