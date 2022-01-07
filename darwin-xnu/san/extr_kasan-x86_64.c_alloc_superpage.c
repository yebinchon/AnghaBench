
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 uintptr_t I386_LPGBYTES ;
 uintptr_t I386_LPGMASK ;
 uintptr_t I386_PGBYTES ;
 uintptr_t ROUND_SUPERPAGE (uintptr_t) ;
 int assert (int) ;
 uintptr_t shadow_pages_used ;
 uintptr_t shadow_pnext ;

__attribute__((used)) static uintptr_t
alloc_superpage(void)
{
 uintptr_t mem;
 shadow_pnext = ROUND_SUPERPAGE(shadow_pnext);
 assert((shadow_pnext & I386_LPGMASK) == 0);
 mem = shadow_pnext;
 shadow_pnext += I386_LPGBYTES;
 shadow_pages_used += I386_LPGBYTES / I386_PGBYTES;

 return mem;
}
