
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
typedef scalar_t__ vm_object_offset_t ;
struct vm_page_delayed_work {scalar_t__ dw_mask; } ;
typedef int memory_object_return_t ;
typedef int memory_object_lock_result_t ;
typedef scalar_t__ memory_object_cluster_size_t ;
typedef int boolean_t ;
struct TYPE_15__ {scalar_t__ pager; scalar_t__ resident_page_count; } ;
struct TYPE_14__ {int vmp_free_when_done; int vmp_dirty; } ;


 int DEFAULT_DELAYED_WORK_LIMIT ;
 int DELAYED_WORK_LIMIT (int) ;
 scalar_t__ DW_vm_page_free ;
 int LIST_REQ_PAGEOUT_PAGES (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__*,int*,int ) ;
 scalar_t__ MAX_UPL_TRANSFER_BYTES ;




 int PAGE_SIZE ;
 scalar_t__ PAGE_SIZE_64 ;
 int PAGE_SLEEP (TYPE_2__*,TYPE_1__*,int ) ;
 int TASK_WRITE_INVALIDATED ;
 int THREAD_UNINT ;
 int TRUE ;
 int VM_KERN_MEMORY_NONE ;
 int VM_PAGE_ADD_DELAYED_WORK (struct vm_page_delayed_work*,TYPE_1__*,int) ;
 TYPE_1__* VM_PAGE_NULL ;
 int VM_PAGE_WIRED (TYPE_1__*) ;
 int current_task () ;
 int memory_object_lock_page (TYPE_1__*,int ,int ,int ) ;
 int task_update_logical_writes (int ,int,int ,int ) ;
 int vm_page_do_delayed_work (TYPE_2__*,int ,struct vm_page_delayed_work*,int) ;
 TYPE_1__* vm_page_lookup (TYPE_2__*,scalar_t__) ;
 int vnode_pager_lookup_vnode (scalar_t__) ;

__attribute__((used)) static int
vm_object_update_extent(
        vm_object_t object,
        vm_object_offset_t offset,
 vm_object_offset_t offset_end,
 vm_object_offset_t *offset_resid,
 int *io_errno,
        boolean_t should_flush,
 memory_object_return_t should_return,
        boolean_t should_iosync,
        vm_prot_t prot)
{
        vm_page_t m;
        int retval = 0;
 vm_object_offset_t paging_offset = 0;
 vm_object_offset_t next_offset = offset;
        memory_object_lock_result_t page_lock_result;
 memory_object_cluster_size_t data_cnt = 0;
 struct vm_page_delayed_work dw_array[DEFAULT_DELAYED_WORK_LIMIT];
 struct vm_page_delayed_work *dwp;
 int dw_count;
 int dw_limit;
 int dirty_count;

        dwp = &dw_array[0];
        dw_count = 0;
 dw_limit = DELAYED_WORK_LIMIT(DEFAULT_DELAYED_WORK_LIMIT);
 dirty_count = 0;

 for (;
      offset < offset_end && object->resident_page_count;
      offset += PAGE_SIZE_64) {





  if (data_cnt) {
   if ((data_cnt >= MAX_UPL_TRANSFER_BYTES) || (next_offset != offset)) {

    if (dw_count) {
     vm_page_do_delayed_work(object, VM_KERN_MEMORY_NONE, &dw_array[0], dw_count);
     dwp = &dw_array[0];
     dw_count = 0;
    }
    LIST_REQ_PAGEOUT_PAGES(object, data_cnt,
             paging_offset, offset_resid, io_errno, should_iosync);
    data_cnt = 0;
   }
  }
  while ((m = vm_page_lookup(object, offset)) != VM_PAGE_NULL) {

   dwp->dw_mask = 0;

   page_lock_result = memory_object_lock_page(m, should_return, should_flush, prot);

   if (data_cnt && page_lock_result != 128) {



    if (dw_count) {
     vm_page_do_delayed_work(object, VM_KERN_MEMORY_NONE, &dw_array[0], dw_count);
     dwp = &dw_array[0];
     dw_count = 0;
    }
    LIST_REQ_PAGEOUT_PAGES(object, data_cnt,
             paging_offset, offset_resid, io_errno, should_iosync);





    data_cnt = 0;
    continue;
   }

   switch (page_lock_result) {

   case 131:
    break;

   case 129:
    if (m->vmp_dirty == TRUE)
     dirty_count++;
    dwp->dw_mask |= DW_vm_page_free;
    break;

   case 130:
    PAGE_SLEEP(object, m, THREAD_UNINT);
    continue;

   case 128:
    if (data_cnt == 0)
     paging_offset = offset;

    data_cnt += PAGE_SIZE;
    next_offset = offset + PAGE_SIZE_64;






    if (!VM_PAGE_WIRED(m)) {

     if (should_flush) {



      m->vmp_free_when_done = TRUE;
     }
    }
    retval = 1;
    break;
   }
   if (dwp->dw_mask) {
    VM_PAGE_ADD_DELAYED_WORK(dwp, m, dw_count);

    if (dw_count >= dw_limit) {
     vm_page_do_delayed_work(object, VM_KERN_MEMORY_NONE, &dw_array[0], dw_count);
     dwp = &dw_array[0];
     dw_count = 0;
    }
   }
   break;
  }
 }

 if (object->pager)
  task_update_logical_writes(current_task(), (dirty_count * PAGE_SIZE), TASK_WRITE_INVALIDATED, vnode_pager_lookup_vnode(object->pager));




 if (dw_count)
  vm_page_do_delayed_work(object, VM_KERN_MEMORY_NONE, &dw_array[0], dw_count);

 if (data_cnt) {
         LIST_REQ_PAGEOUT_PAGES(object, data_cnt,
           paging_offset, offset_resid, io_errno, should_iosync);
 }
 return (retval);
}
