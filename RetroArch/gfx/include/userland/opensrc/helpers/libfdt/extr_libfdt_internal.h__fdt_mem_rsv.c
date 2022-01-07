
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_reserve_entry {int dummy; } ;


 int fdt_off_mem_rsvmap (void const*) ;

__attribute__((used)) static inline const struct fdt_reserve_entry *_fdt_mem_rsv(const void *fdt, int n)
{
 const struct fdt_reserve_entry *rsv_table =
  (const struct fdt_reserve_entry *)
  ((const char *)fdt + fdt_off_mem_rsvmap(fdt));

 return rsv_table + n;
}
