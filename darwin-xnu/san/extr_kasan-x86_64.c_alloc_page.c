
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ I386_PGBYTES ;
 int panic (char*) ;
 int shadow_pages_used ;
 uintptr_t shadow_pnext ;
 scalar_t__ shadow_ptop ;

__attribute__((used)) static uintptr_t
alloc_page(void)
{
 if (shadow_pnext + I386_PGBYTES >= shadow_ptop) {
  panic("KASAN: OOM");
 }

 uintptr_t mem = shadow_pnext;
 shadow_pnext += I386_PGBYTES;
 shadow_pages_used++;

 return mem;
}
