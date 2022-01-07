
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_ANONYMOUS ;
 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int errno ;
 int lprintf (char*,unsigned long,void*,...) ;
 void* mmap (void*,size_t,int,int,int,int ) ;
 int munmap (void*,size_t) ;

void *plat_mmap(unsigned long addr, size_t size, int need_exec, int is_fixed)
{
   int flags = MAP_PRIVATE | MAP_ANONYMOUS;
   void *req, *ret;

   req = (void *)addr;
   ret = mmap(req, size, PROT_READ | PROT_WRITE, flags, -1, 0);
   if (ret == MAP_FAILED) {
      lprintf("mmap(%08lx, %zd) failed: %d\n", addr, size, errno);
      return ((void*)0);
   }

   if (addr != 0 && ret != (void *)addr) {
      lprintf("warning: wanted to map @%08lx, got %p\n",
            addr, ret);

      if (is_fixed) {
         munmap(ret, size);
         return ((void*)0);
      }
   }

 return ret;
}
