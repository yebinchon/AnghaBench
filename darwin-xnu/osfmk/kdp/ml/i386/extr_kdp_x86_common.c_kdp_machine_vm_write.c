
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mach_vm_size_t ;
typedef scalar_t__ mach_vm_address_t ;
typedef scalar_t__ caddr_t ;
typedef unsigned int addr64_t ;


 scalar_t__ EFAULT ;
 unsigned int PAGE_MASK ;
 unsigned int PAGE_SIZE ;
 unsigned int PAL_KDP_ADDR (unsigned int) ;
 unsigned int kdp_vtophys (int ,unsigned int) ;
 int kernel_pmap ;
 scalar_t__ ml_copy_phys (unsigned int,unsigned int,unsigned int) ;
 int printf (char*,void*,scalar_t__,scalar_t__,unsigned int,unsigned int) ;

mach_vm_size_t
kdp_machine_vm_write( caddr_t src, mach_vm_address_t dst, mach_vm_size_t len)
{
 addr64_t cur_virt_src, cur_virt_dst;
 addr64_t cur_phys_src, cur_phys_dst;
 unsigned resid, cnt, cnt_src, cnt_dst;





 cur_virt_src = PAL_KDP_ADDR((addr64_t)(intptr_t)src);
 cur_virt_dst = PAL_KDP_ADDR((addr64_t)dst);

 resid = (unsigned)len;

 while (resid != 0) {
  if ((cur_phys_dst = kdp_vtophys(kernel_pmap, cur_virt_dst)) == 0)
   goto exit;

  if ((cur_phys_src = kdp_vtophys(kernel_pmap, cur_virt_src)) == 0)
   goto exit;


  cnt_src = (unsigned)(PAGE_SIZE - (cur_phys_src & PAGE_MASK));
  cnt_dst = (unsigned)(PAGE_SIZE - (cur_phys_dst & PAGE_MASK));

  if (cnt_src > cnt_dst)
   cnt = cnt_dst;
  else
   cnt = cnt_src;
  if (cnt > resid)
   cnt = resid;

  if (EFAULT == ml_copy_phys(cur_phys_src, cur_phys_dst, cnt))
   goto exit;

  cur_virt_src +=cnt;
  cur_virt_dst +=cnt;
  resid -= cnt;
 }
exit:
 return (len - resid);
}
