
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_map_t ;
typedef int vm_map_size_t ;
typedef int vm_map_offset_t ;
typedef scalar_t__ thread_t ;
typedef int task_t ;
struct vnode {int dummy; } ;
struct mach_header {int flags; } ;
struct image_params {scalar_t__ ip_arch_offset; scalar_t__ ip_arch_size; int ip_flags; scalar_t__ ip_new_thread; TYPE_1__* ip_vattr; struct vnode* ip_vp; } ;
typedef int proc_t ;
typedef int pmap_t ;
typedef scalar_t__ off_t ;
typedef scalar_t__ load_return_t ;
struct TYPE_7__ {int is_64bit_addr; int is_64bit_data; scalar_t__ has_pagezero; } ;
typedef TYPE_2__ load_result_t ;
typedef int kern_return_t ;
typedef int int64_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_6__ {scalar_t__ va_data_size; } ;


 scalar_t__ FALSE ;
 int FOURK_PAGE_SHIFT ;
 int IMGPF_ALLOW_DATA_EXEC ;
 int IMGPF_DISABLE_ASLR ;
 int IMGPF_EXEC ;
 int IMGPF_HIGH_BITS_ASLR ;
 int IMGPF_IS_64BIT_ADDR ;
 int IMGPF_IS_64BIT_DATA ;
 int KERN_SUCCESS ;
 scalar_t__ LOAD_BADMACHO ;
 scalar_t__ LOAD_FAILURE ;
 scalar_t__ LOAD_SUCCESS ;
 int MH_ALLOW_STACK_EXECUTION ;
 int MH_NO_HEAP_EXECUTION ;
 int MH_PIE ;
 int PAGE_SHIFT ;
 int SIXTEENK_PAGE_SHIFT ;
 scalar_t__ TRUE ;
 int VM_MAP_HIGH_START_BITS_COUNT ;
 int VM_MAP_HIGH_START_BITS_SHIFT ;
 int act_set_astbsd (scalar_t__) ;
 int cs_process_global_enforcement () ;
 int current_proc () ;
 int current_task () ;
 scalar_t__ fourk_binary_compatibility_unsafe ;
 int get_task_ledger (int ) ;
 int get_threadtask (scalar_t__) ;
 TYPE_2__ load_result_null ;
 int page_shift_user32 ;
 scalar_t__ parse_machfile (struct vnode*,int ,scalar_t__,struct mach_header*,scalar_t__,scalar_t__,int ,int,int,TYPE_2__*,int *,struct image_params*) ;
 int pmap_create (int ,int ,int) ;
 int proc_transcommit (int ,int ) ;
 int random () ;
 int task_complete_halt (int ) ;
 int task_rollup_accounting_info (int ,int ) ;
 int task_set_32bit_log_flag (int ) ;
 int task_start_halt (int ) ;
 int vm_commit_pagezero_status (int ) ;
 int vm_compute_max_offset (int) ;
 int vm_map_create (int ,int ,int ,scalar_t__) ;
 int vm_map_deallocate (int ) ;
 int vm_map_disable_NX (int ) ;
 int vm_map_disallow_data_exec (int ) ;
 int vm_map_get_max_aslr_slide_pages (int ) ;
 int vm_map_get_max_aslr_slide_section (int ,int*,int*) ;
 int vm_map_get_max_loader_aslr_slide_pages (int ) ;
 scalar_t__ vm_map_has_hard_pagezero (int ,int) ;
 int vm_map_page_shift (int ) ;
 int vm_map_set_high_start (int ,int) ;
 int vm_map_set_page_shift (int ,int ) ;
 int workq_exit (int ) ;
 int workq_mark_exiting (int ) ;

load_return_t
load_machfile(
 struct image_params *imgp,
 struct mach_header *header,
 thread_t thread,
 vm_map_t *mapp,
 load_result_t *result
)
{
 struct vnode *vp = imgp->ip_vp;
 off_t file_offset = imgp->ip_arch_offset;
 off_t macho_size = imgp->ip_arch_size;
 off_t file_size = imgp->ip_vattr->va_data_size;
 pmap_t pmap = 0;
 vm_map_t map;
 load_result_t myresult;
 load_return_t lret;
 boolean_t enforce_hard_pagezero = TRUE;
 int in_exec = (imgp->ip_flags & IMGPF_EXEC);
 task_t task = current_task();
 proc_t p = current_proc();
 int64_t aslr_page_offset = 0;
 int64_t dyld_aslr_page_offset = 0;
 int64_t aslr_section_size = 0;
 int64_t aslr_section_offset = 0;
 kern_return_t kret;

 if (macho_size > file_size) {
  return(LOAD_BADMACHO);
 }

 result->is_64bit_addr = ((imgp->ip_flags & IMGPF_IS_64BIT_ADDR) == IMGPF_IS_64BIT_ADDR);
 result->is_64bit_data = ((imgp->ip_flags & IMGPF_IS_64BIT_DATA) == IMGPF_IS_64BIT_DATA);

 task_t ledger_task;
 if (imgp->ip_new_thread) {
  ledger_task = get_threadtask(imgp->ip_new_thread);
 } else {
  ledger_task = task;
 }
 pmap = pmap_create(get_task_ledger(ledger_task),
      (vm_map_size_t) 0,
      result->is_64bit_addr);
 map = vm_map_create(pmap,
   0,
   vm_compute_max_offset(result->is_64bit_addr),
   TRUE);
 if ( !cs_process_global_enforcement() && (header->flags & MH_ALLOW_STACK_EXECUTION) ) {
         vm_map_disable_NX(map);

 }




 if ((header->flags & MH_NO_HEAP_EXECUTION) && !(imgp->ip_flags & IMGPF_ALLOW_DATA_EXEC))
  vm_map_disallow_data_exec(map);




 if (!(imgp->ip_flags & IMGPF_DISABLE_ASLR)) {
  vm_map_get_max_aslr_slide_section(map, &aslr_section_offset, &aslr_section_size);
  aslr_section_offset = (random() % aslr_section_offset) * aslr_section_size;

  aslr_page_offset = random();
  aslr_page_offset %= vm_map_get_max_aslr_slide_pages(map);
  aslr_page_offset <<= vm_map_page_shift(map);

  dyld_aslr_page_offset = random();
  dyld_aslr_page_offset %= vm_map_get_max_loader_aslr_slide_pages(map);
  dyld_aslr_page_offset <<= vm_map_page_shift(map);

  aslr_page_offset += aslr_section_offset;
 }

 if (!result)
  result = &myresult;

 *result = load_result_null;




 result->is_64bit_addr = ((imgp->ip_flags & IMGPF_IS_64BIT_ADDR) == IMGPF_IS_64BIT_ADDR);
 result->is_64bit_data = ((imgp->ip_flags & IMGPF_IS_64BIT_DATA) == IMGPF_IS_64BIT_DATA);

 lret = parse_machfile(vp, map, thread, header, file_offset, macho_size,
                       0, aslr_page_offset, dyld_aslr_page_offset, result,
         ((void*)0), imgp);

 if (lret != LOAD_SUCCESS) {
  vm_map_deallocate(map);
  return(lret);
 }





 if (!result->is_64bit_addr) {
  enforce_hard_pagezero = FALSE;
 }







 if (result->is_64bit_addr &&
     (imgp->ip_flags & IMGPF_HIGH_BITS_ASLR)) {
  int random_bits;
  vm_map_offset_t high_start;

  random_bits = random();
  random_bits &= (1 << 8)-1;
  high_start = (((vm_map_offset_t)random_bits)
         << 27);
  vm_map_set_high_start(map, high_start);
 }





 if (enforce_hard_pagezero &&
     (vm_map_has_hard_pagezero(map, 0x1000) == FALSE)) {
  {
   vm_map_deallocate(map);
   return (LOAD_BADMACHO);
  }
 }

 vm_commit_pagezero_status(map);






 if (in_exec) {
  kret = task_start_halt(task);
  if (kret != KERN_SUCCESS) {
   vm_map_deallocate(map);
   return (LOAD_FAILURE);
  }
  proc_transcommit(p, 0);
  workq_mark_exiting(p);
  task_complete_halt(task);
  workq_exit(p);






  task_rollup_accounting_info(get_threadtask(thread), task);
 }
 *mapp = map;
 return(LOAD_SUCCESS);
}
