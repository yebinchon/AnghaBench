
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I386_PGBYTES ;
 uintptr_t alloc_page () ;
 int bzero_phys (uintptr_t,int ) ;

__attribute__((used)) static uintptr_t
alloc_page_zero(void)
{
 uintptr_t mem = alloc_page();
 bzero_phys(mem, I386_PGBYTES);
 return mem;
}
