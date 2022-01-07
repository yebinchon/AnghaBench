
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_EXECUTE_READWRITE ;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;
 int VirtualProtect (void*,size_t,int ,int ) ;
 int errno ;
 int lprintf (char*,void*,size_t,int ) ;
 int mprotect (void*,size_t,int) ;

int plat_mem_set_exec(void *ptr, size_t size)
{





   int ret = mprotect(ptr, size, PROT_READ | PROT_WRITE | PROT_EXEC);
   if (ret != 0)
      lprintf("mprotect(%p, %zd) failed: %d\n", ptr, size, errno);

 return ret;
}
