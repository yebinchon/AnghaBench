
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARMC_VIRT2PHYS ;
 int ioctl (int ,int ,unsigned long*) ;
 int perror (char*) ;
 int warm_fd ;

unsigned long warm_virt2phys(const void *ptr)
{
 unsigned long ptrio;
 int ret;

 ptrio = (unsigned long)ptr;
 ret = ioctl(warm_fd, WARMC_VIRT2PHYS, &ptrio);
 if (ret != 0) {
  perror("WARMC_VIRT2PHYS failed");
  return (unsigned long)-1;
 }

 return ptrio;
}
