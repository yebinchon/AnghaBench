
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef int vm_map_t ;
typedef scalar_t__ vm_map_size_t ;
typedef scalar_t__ vm_map_offset_t ;
struct TYPE_8__ {void* vmkf_fourk; } ;
typedef TYPE_1__ vm_map_kernel_flags_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct vnode {int dummy; } ;
struct segment_command_64 {scalar_t__ vmaddr; scalar_t__ vmsize; scalar_t__ fileoff; scalar_t__ filesize; int initprot; int maxprot; int flags; size_t nsects; int segname; } ;
struct segment_command {int dummy; } ;
struct section_64 {int dummy; } ;
struct section {int dummy; } ;
struct load_command {scalar_t__ cmd; size_t cmdsize; } ;
typedef scalar_t__ off_t ;
typedef scalar_t__ mach_vm_offset_t ;
typedef scalar_t__ load_return_t ;
struct TYPE_9__ {scalar_t__ cs_end_offset; scalar_t__ min_vm_addr; scalar_t__ max_vm_addr; scalar_t__ all_image_info_addr; scalar_t__ entry_point; int validentry; scalar_t__ mach_header; } ;
typedef TYPE_2__ load_result_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ int64_t ;
typedef void* boolean_t ;


 void* FALSE ;
 scalar_t__ FOURK_PAGE_MASK ;
 scalar_t__ FOURK_PAGE_SIZE ;
 int IPC_PORT_NULL ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ LC_SEGMENT_64 ;
 scalar_t__ LOAD_BADMACHO ;
 scalar_t__ LOAD_FAILURE ;
 scalar_t__ LOAD_NOSPACE ;
 scalar_t__ LOAD_RESOURCE ;
 scalar_t__ LOAD_SUCCESS ;
 int MACHO_PRINTF (char*) ;
 scalar_t__ MACH_VM_MIN_ADDRESS ;
 scalar_t__ MAX (int ,scalar_t__) ;
 void* MEMORY_OBJECT_CONTROL_NULL ;
 scalar_t__ MH_DYLINKER ;
 int PAGE_MASK ;
 scalar_t__ PAGE_MASK_64 ;
 int PAGE_SIZE ;
 int SG_PROTECTED_VERSION_1 ;
 void* TRUE ;
 int VM_FLAGS_ANYWHERE ;
 int VM_FLAGS_FIXED ;
 int VM_INHERIT_DEFAULT ;
 int VM_KERN_MEMORY_BSD ;
 int VM_KERN_MEMORY_NONE ;
 TYPE_1__ VM_MAP_KERNEL_FLAGS_NONE ;
 int VM_MAP_NULL ;
 int VM_PROT_ALL ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_NONE ;
 int VM_PROT_READ ;
 int assert (void*) ;
 scalar_t__ copyout (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ cs_debug ;
 int kernel_map ;
 scalar_t__ mach_vm_allocate_kernel (int ,scalar_t__*,scalar_t__,int ,int ) ;
 int mach_vm_deallocate (int ,scalar_t__,scalar_t__) ;
 scalar_t__ map_addr ;
 scalar_t__ map_segment (int ,scalar_t__,scalar_t__,void*,scalar_t__,scalar_t__,int,int,TYPE_2__*) ;
 scalar_t__ map_size ;
 int note_all_image_info_section (struct segment_command_64*,int,size_t,char const*,scalar_t__,TYPE_2__*) ;
 scalar_t__ page_aligned (scalar_t__) ;
 int printf (char*) ;
 int strncmp (int ,char*,int) ;
 scalar_t__ unprotect_dsmos_segment (scalar_t__,scalar_t__,struct vnode*,scalar_t__,int ,scalar_t__,scalar_t__) ;
 scalar_t__ vm_map_enter_mem_object (int ,scalar_t__*,scalar_t__,scalar_t__,int ,TYPE_1__,int ,int ,int ,void*,int,int,int ) ;
 scalar_t__ vm_map_page_aligned (scalar_t__,scalar_t__) ;
 scalar_t__ vm_map_page_mask (int ) ;
 scalar_t__ vm_map_page_size (int ) ;
 scalar_t__ vm_map_raise_min_offset (int ,scalar_t__) ;
 scalar_t__ vm_map_round_page (scalar_t__,scalar_t__) ;
 scalar_t__ vm_map_trunc_page (scalar_t__,scalar_t__) ;
 int widen_segment_command (struct segment_command*,struct segment_command_64*) ;

__attribute__((used)) static
load_return_t
load_segment(
 struct load_command *lcp,
 uint32_t filetype,
 void * control,
 off_t pager_offset,
 off_t macho_size,
 struct vnode *vp,
 vm_map_t map,
 int64_t slide,
 load_result_t *result)
{
 struct segment_command_64 segment_command, *scp;
 kern_return_t ret;
 vm_map_size_t delta_size;
 vm_prot_t initprot;
 vm_prot_t maxprot;
 size_t segment_command_size, total_section_size,
    single_section_size;
 vm_map_offset_t file_offset, file_size;
 vm_map_offset_t vm_offset, vm_size;
 vm_map_offset_t vm_start, vm_end, vm_end_aligned;
 vm_map_offset_t file_start, file_end;
 kern_return_t kr;
 boolean_t verbose;
 vm_map_size_t effective_page_size;
 vm_map_offset_t effective_page_mask;





 effective_page_size = MAX(PAGE_SIZE, vm_map_page_size(map));
 effective_page_mask = MAX(PAGE_MASK, vm_map_page_mask(map));

 verbose = FALSE;
 if (LC_SEGMENT_64 == lcp->cmd) {
  segment_command_size = sizeof(struct segment_command_64);
  single_section_size = sizeof(struct section_64);




 } else {
  segment_command_size = sizeof(struct segment_command);
  single_section_size = sizeof(struct section);
 }
 if (lcp->cmdsize < segment_command_size)
  return (LOAD_BADMACHO);
 total_section_size = lcp->cmdsize - segment_command_size;

 if (LC_SEGMENT_64 == lcp->cmd) {
  scp = (struct segment_command_64 *)lcp;
 } else {
  scp = &segment_command;
  widen_segment_command((struct segment_command *)lcp, scp);
 }

 if (verbose) {
  MACHO_PRINTF(("+++ load_segment %s "
         "vm[0x%llx:0x%llx] file[0x%llx:0x%llx] "
         "prot %d/%d flags 0x%x\n",
         scp->segname,
         (uint64_t)(slide + scp->vmaddr),
         (uint64_t)(slide + scp->vmaddr + scp->vmsize),
         pager_offset + scp->fileoff,
         pager_offset + scp->fileoff + scp->filesize,
         scp->initprot,
         scp->maxprot,
         scp->flags));
 }





 if (scp->fileoff + scp->filesize < scp->fileoff ||
     scp->fileoff + scp->filesize > (uint64_t)macho_size) {
  return (LOAD_BADMACHO);
 }




 if (total_section_size / single_section_size < scp->nsects) {
  return (LOAD_BADMACHO);
 }



 file_offset = pager_offset + scp->fileoff;
 file_size = scp->filesize;
 if ((file_offset & PAGE_MASK_64) != 0 ||

     (file_offset & vm_map_page_mask(map)) != 0) {





  return (LOAD_BADMACHO);
 }






 if (result->cs_end_offset &&
     result->cs_end_offset < (off_t)scp->fileoff &&
     result->cs_end_offset - scp->fileoff < scp->filesize)
        {
  if (cs_debug)
   printf("section outside code signature\n");
  return LOAD_BADMACHO;
 }

 vm_offset = scp->vmaddr + slide;
 vm_size = scp->vmsize;

 if (vm_size == 0)
  return (LOAD_SUCCESS);
 if (scp->vmaddr == 0 &&
     file_size == 0 &&
     vm_size != 0 &&
     (scp->initprot & VM_PROT_ALL) == VM_PROT_NONE &&
     (scp->maxprot & VM_PROT_ALL) == VM_PROT_NONE) {
  vm_end = vm_offset + vm_size;
  if (vm_end < vm_offset) {
   return (LOAD_BADMACHO);
  }
  if (verbose) {
   MACHO_PRINTF(("++++++ load_segment: "
          "page_zero up to 0x%llx\n",
          (uint64_t) vm_end));
  }







  {
   vm_end = vm_map_round_page(vm_end,
         PAGE_MASK_64);
   vm_end_aligned = vm_end;
  }
  ret = vm_map_raise_min_offset(map,
           vm_end_aligned);
  if (ret != KERN_SUCCESS) {
   return (LOAD_FAILURE);
  }
  return (LOAD_SUCCESS);
 } else {






 }
 {
  file_start = vm_map_trunc_page(file_offset,
            effective_page_mask);
  file_end = vm_map_round_page(file_offset + file_size,
          effective_page_mask);
  vm_start = vm_map_trunc_page(vm_offset,
          effective_page_mask);
  vm_end = vm_map_round_page(vm_offset + vm_size,
        effective_page_mask);
 }

 if (vm_start < result->min_vm_addr)
  result->min_vm_addr = vm_start;
 if (vm_end > result->max_vm_addr)
  result->max_vm_addr = vm_end;

 if (map == VM_MAP_NULL)
  return (LOAD_SUCCESS);

 if (vm_size > 0) {
  initprot = (scp->initprot) & VM_PROT_ALL;
  maxprot = (scp->maxprot) & VM_PROT_ALL;



  if (verbose) {
   MACHO_PRINTF(("++++++ load_segment: "
          "mapping at vm [0x%llx:0x%llx] of "
          "file [0x%llx:0x%llx]\n",
          (uint64_t) vm_start,
          (uint64_t) vm_end,
          (uint64_t) file_start,
          (uint64_t) file_end));
  }
  ret = map_segment(map,
      vm_start,
      vm_end,
      control,
      file_start,
      file_end,
      initprot,
      maxprot,
      result);
  if (ret) {
   return LOAD_NOSPACE;
  }
 }






 if ((vm_end - vm_start) > (file_end - file_start)) {
  delta_size = (vm_end - vm_start) - (file_end - file_start);
 } else {
  delta_size = 0;
 }
 if (delta_size > 0) {
  mach_vm_offset_t tmp;

  tmp = vm_start + (file_end - file_start);
  if (verbose) {
   MACHO_PRINTF(("++++++ load_segment: "
          "delta mapping vm [0x%llx:0x%llx]\n",
          (uint64_t) tmp,
          (uint64_t) (tmp + delta_size)));
  }
  kr = map_segment(map,
     tmp,
     tmp + delta_size,
     MEMORY_OBJECT_CONTROL_NULL,
     0,
     delta_size,
     scp->initprot,
     scp->maxprot,
     result);
  if (kr != KERN_SUCCESS) {
   return(LOAD_NOSPACE);
  }
 }

 if ( (scp->fileoff == 0) && (scp->filesize != 0) )
  result->mach_header = vm_offset;

 if (scp->flags & SG_PROTECTED_VERSION_1) {
  ret = unprotect_dsmos_segment(file_start,
           file_end - file_start,
           vp,
           pager_offset,
           map,
           vm_start,
           vm_end - vm_start);
  if (ret != LOAD_SUCCESS) {
   return ret;
  }
 } else {
  ret = LOAD_SUCCESS;
 }

 if (LOAD_SUCCESS == ret &&
     filetype == MH_DYLINKER &&
     result->all_image_info_addr == MACH_VM_MIN_ADDRESS) {
  note_all_image_info_section(scp,
         LC_SEGMENT_64 == lcp->cmd,
         single_section_size,
         ((const char *)lcp +
          segment_command_size),
         slide,
         result);
 }

 if (result->entry_point != MACH_VM_MIN_ADDRESS) {
  if ((result->entry_point >= vm_offset) && (result->entry_point < (vm_offset + vm_size))) {
   if ((scp->initprot & (VM_PROT_READ|VM_PROT_EXECUTE)) == (VM_PROT_READ|VM_PROT_EXECUTE)) {
    result->validentry = 1;
   } else {

    result->validentry = 0;
   }
  }
 }

 return ret;
}
