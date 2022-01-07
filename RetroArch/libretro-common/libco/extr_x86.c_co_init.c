
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;
 int _SC_PAGESIZE ;
 scalar_t__ co_swap_function ;
 int mprotect (void*,unsigned long,int) ;
 unsigned long sysconf (int ) ;

__attribute__((used)) static void co_init(void)
{
   unsigned long addr = (unsigned long)co_swap_function;
   unsigned long base = addr - (addr % sysconf(_SC_PAGESIZE));
   unsigned long size = (addr - base) + sizeof co_swap_function;
   mprotect((void*)base, size, PROT_READ | PROT_WRITE | PROT_EXEC);
}
