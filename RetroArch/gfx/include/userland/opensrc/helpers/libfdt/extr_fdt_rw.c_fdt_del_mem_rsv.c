
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_reserve_entry {int dummy; } ;


 int FDT_ERR_NOTFOUND ;
 int FDT_RW_CHECK_HEADER (void*) ;
 struct fdt_reserve_entry* _fdt_mem_rsv_w (void*,int) ;
 int _fdt_splice_mem_rsv (void*,struct fdt_reserve_entry*,int,int ) ;
 int fdt_num_mem_rsv (void*) ;

int fdt_del_mem_rsv(void *fdt, int n)
{
 struct fdt_reserve_entry *re = _fdt_mem_rsv_w(fdt, n);
 int err;

 FDT_RW_CHECK_HEADER(fdt);

 if (n >= fdt_num_mem_rsv(fdt))
  return -FDT_ERR_NOTFOUND;

 err = _fdt_splice_mem_rsv(fdt, re, 1, 0);
 if (err)
  return err;
 return 0;
}
