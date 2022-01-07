
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_size_t ;
typedef scalar_t__ uint16_t ;
typedef scalar_t__ mach_vm_size_t ;
typedef scalar_t__ mach_vm_address_t ;
typedef int kdp_x86_xcpu_func_t ;
struct TYPE_4__ {scalar_t__ nbytes; scalar_t__ address; } ;
typedef TYPE_1__ kdp_readphysmem64_req_t ;
typedef scalar_t__ caddr_t ;
typedef scalar_t__ addr64_t ;


 scalar_t__ EFAULT ;
 scalar_t__ KDP_CURRENT_LCPU ;
 scalar_t__ PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ cpu_number () ;
 scalar_t__ kdp_vtophys (int ,scalar_t__) ;
 int kdp_x86_xcpu_invoke (scalar_t__,int ,TYPE_1__*,scalar_t__) ;
 int kernel_pmap ;
 scalar_t__ ml_copy_phys (scalar_t__,scalar_t__,int ) ;
 int printf (char*,scalar_t__,void*,scalar_t__) ;

mach_vm_size_t
kdp_machine_phys_read(kdp_readphysmem64_req_t *rq, caddr_t dst,
        uint16_t lcpu)
{
 mach_vm_address_t src = rq->address;
 mach_vm_size_t len = rq->nbytes;

 addr64_t cur_virt_dst;
 addr64_t cur_phys_dst, cur_phys_src;
 mach_vm_size_t resid = len;
 mach_vm_size_t cnt = 0, cnt_src, cnt_dst;

        if ((lcpu != KDP_CURRENT_LCPU) && (lcpu != cpu_number())) {
  return (mach_vm_size_t)
   kdp_x86_xcpu_invoke(lcpu, (kdp_x86_xcpu_func_t)kdp_machine_phys_read, rq, dst);
        }





 cur_virt_dst = (addr64_t)(intptr_t)dst;
 cur_phys_src = (addr64_t)src;

 while (resid != 0) {

  if(!(cur_phys_dst = kdp_vtophys(kernel_pmap, cur_virt_dst)))
   goto exit;


  cnt_src = PAGE_SIZE - (cur_phys_src & PAGE_MASK);
  cnt_dst = PAGE_SIZE - (cur_phys_dst & PAGE_MASK);
  if (cnt_src > cnt_dst)
   cnt = cnt_dst;
  else
   cnt = cnt_src;
  if (cnt > resid)
   cnt = resid;




  if (EFAULT == ml_copy_phys(cur_phys_src,
        cur_phys_dst,
        (vm_size_t)cnt))
   goto exit;
  cur_phys_src += cnt;
  cur_virt_dst += cnt;
  resid -= cnt;
 }
exit:
 return (len - resid);
}
