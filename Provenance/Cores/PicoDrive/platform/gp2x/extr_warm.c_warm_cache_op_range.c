
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct warm_cache_op {int ops; unsigned long addr; unsigned long size; } ;


 int WARMC_CACHE_OP ;
 int ioctl (scalar_t__,int ,struct warm_cache_op*) ;
 int perror (char*) ;
 int sys_cacheflush (void*,char*) ;
 scalar_t__ warm_fd ;

int warm_cache_op_range(int op, void *addr, unsigned long size)
{
 struct warm_cache_op wop;
 int ret;

 if (warm_fd < 0) {

  sys_cacheflush(addr, (char *)addr + size);
  return -1;
 }

 wop.ops = op;
 wop.addr = (unsigned long)addr;
 wop.size = size;

 ret = ioctl(warm_fd, WARMC_CACHE_OP, &wop);
 if (ret != 0) {
  perror("WARMC_CACHE_OP failed");
  return -1;
 }

 return 0;
}
