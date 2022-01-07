
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 size_t NUM_KERNEL_STATUS ;
 int OSDeleteLock (int ) ;
 int kernel_status_inited ;
 int * kernel_status_lock ;

void FreeKernelStatus()
{
 UINT i;

 kernel_status_inited = 0;


 for (i = 0;i < NUM_KERNEL_STATUS;i++)
 {
  OSDeleteLock(kernel_status_lock[i]);
 }
}
