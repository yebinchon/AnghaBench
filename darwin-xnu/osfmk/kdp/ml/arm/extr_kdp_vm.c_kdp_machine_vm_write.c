
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_vm_size_t ;
typedef int mach_vm_address_t ;
typedef int caddr_t ;
typedef int addr64_t ;


 int ARM_PGBYTES ;
 int TRUE ;
 int bcopy_phys (int,int,int) ;
 int flush_dcache64 (int,unsigned int,int ) ;
 int invalidate_icache64 (int,unsigned int,int ) ;
 int kdp_vtophys (int ,int) ;
 int kernel_pmap ;
 int pmap_valid_address (int) ;
 int printf (char*,int,int,int,...) ;

mach_vm_size_t
kdp_machine_vm_write( caddr_t src, mach_vm_address_t dst, mach_vm_size_t len)
{
 addr64_t cur_virt_src, cur_virt_dst;
 addr64_t cur_phys_src, cur_phys_dst;
 mach_vm_size_t resid, cnt, cnt_src, cnt_dst;





 cur_virt_src = (addr64_t) src;
 cur_virt_dst = (addr64_t) dst;

 resid = len;

 while (resid != 0) {
  if ((cur_phys_dst = kdp_vtophys(kernel_pmap, cur_virt_dst)) == 0)
   goto exit;

  if ((cur_phys_src = kdp_vtophys(kernel_pmap, cur_virt_src)) == 0)
   goto exit;



  if ((!pmap_valid_address(cur_phys_dst)) || (!pmap_valid_address(cur_phys_src)))
   goto exit;

  cnt_src = ((cur_phys_src + ARM_PGBYTES) & (-ARM_PGBYTES)) - cur_phys_src;
  cnt_dst = ((cur_phys_dst + ARM_PGBYTES) & (-ARM_PGBYTES)) - cur_phys_dst;

  if (cnt_src > cnt_dst)
   cnt = cnt_dst;
  else
   cnt = cnt_src;
  if (cnt > resid)
   cnt = resid;




  bcopy_phys(cur_phys_src, cur_phys_dst, cnt);
  flush_dcache64(cur_phys_dst, (unsigned int)cnt, TRUE);
  invalidate_icache64(cur_phys_dst, (unsigned int)cnt, TRUE);

  cur_virt_src += cnt;
  cur_virt_dst += cnt;
  resid -= cnt;
 }
exit:
 return (len - resid);
}
