
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARM_PGBYTES ;
 int __nosan_bzero (void*,int ) ;
 uintptr_t alloc_page () ;
 scalar_t__ phystokv (uintptr_t) ;

__attribute__((used)) static uintptr_t
alloc_zero_page(void)
{
 uintptr_t mem = alloc_page();
 __nosan_bzero((void *)phystokv(mem), ARM_PGBYTES);
 return mem;
}
