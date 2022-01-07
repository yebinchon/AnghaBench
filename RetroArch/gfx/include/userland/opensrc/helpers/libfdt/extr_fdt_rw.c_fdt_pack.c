
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_reserve_entry {int dummy; } ;


 int FDT_RW_CHECK_HEADER (void*) ;
 int _fdt_data_size (void*) ;
 int _fdt_packblocks (void*,void*,int,int ) ;
 int fdt_num_mem_rsv (void*) ;
 int fdt_set_totalsize (void*,int ) ;
 int fdt_size_dt_struct (void*) ;

int fdt_pack(void *fdt)
{
 int mem_rsv_size;

 FDT_RW_CHECK_HEADER(fdt);

 mem_rsv_size = (fdt_num_mem_rsv(fdt)+1)
  * sizeof(struct fdt_reserve_entry);
 _fdt_packblocks(fdt, fdt, mem_rsv_size, fdt_size_dt_struct(fdt));
 fdt_set_totalsize(fdt, _fdt_data_size(fdt));

 return 0;
}
