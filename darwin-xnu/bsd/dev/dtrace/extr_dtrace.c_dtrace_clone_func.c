
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;


 int DEVFS_CLONE_ALLOC ;
 int DEVFS_CLONE_FREE ;
 int dtrace_state_reserve () ;

__attribute__((used)) static int
dtrace_clone_func(dev_t dev, int action)
{
#pragma unused(dev)

 if (action == DEVFS_CLONE_ALLOC) {
  return dtrace_state_reserve();
 }
 else if (action == DEVFS_CLONE_FREE) {
  return 0;
 }
 else return -1;
}
