
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct swapout_io_completion {int swp_c_size; int swp_upl_ctx; scalar_t__ swp_io_done; scalar_t__ swp_io_error; struct swapfile* swp_swf; TYPE_1__* swp_c_seg; } ;
struct swapfile {unsigned int swp_free_hint; int swp_flags; unsigned int swp_nseginuse; unsigned int swp_nsegs; int* swp_bitmap; int swp_index; int swp_vp; int swp_queue; TYPE_1__** swp_csegs; int swp_io_count; } ;
typedef int queue_entry_t ;
typedef int kern_return_t ;
typedef int event_t ;
typedef int clock_sec_t ;
typedef int clock_nsec_t ;
typedef TYPE_1__* c_segment_t ;
typedef int boolean_t ;
struct TYPE_3__ {int c_busy_swapping; int c_busy; int c_on_minorcompact_q; } ;


 unsigned int COMPRESSED_SWAP_CHUNK_SIZE ;
 scalar_t__ FALSE ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int NSEC_PER_USEC ;
 int PAGE_SIZE_64 ;
 int SWAP_DEVICE_SHIFT ;
 int SWAP_READY ;
 int SWAP_WRITE ;
 int THREAD_CONTINUE_NULL ;
 int THREAD_INTERRUPTIBLE ;
 int TRUE ;
 scalar_t__ VM_SWAP_SHOULD_CREATE (int ) ;
 int assert (int) ;
 int assert_wait_timeout (int ,int ,int,int) ;
 int clock_get_system_nanotime (int *,int *) ;
 scalar_t__ hibernate_flushing ;
 int hibernate_no_swapspace ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int queue_end (int *,int ) ;
 scalar_t__ queue_first (int *) ;
 scalar_t__ queue_next (int *) ;
 int swf_global_queue ;
 int thread_block (int ) ;
 int thread_wakeup (int ) ;
 int vm_num_swap_files ;
 int vm_swap_data_lock ;
 int vm_swap_put_failures ;
 int vm_swap_put_finish (struct swapfile*,int*,int) ;
 int vm_swapfile_create_needed ;
 int vm_swapfile_create_thread_running ;
 int vm_swapfile_io (int ,int,int ,int,int ,void*) ;
 int vm_swapfile_total_segs_used ;

kern_return_t
vm_swap_put(vm_offset_t addr, uint64_t *f_offset, uint32_t size, c_segment_t c_seg, struct swapout_io_completion *soc)
{
 unsigned int segidx = 0;
 struct swapfile *swf = ((void*)0);
 uint64_t file_offset = 0;
 uint64_t swapfile_index = 0;
 unsigned int byte_for_segidx = 0;
 unsigned int offset_within_byte = 0;
 boolean_t swf_eligible = FALSE;
 boolean_t waiting = FALSE;
 boolean_t retried = FALSE;
 int error = 0;
 clock_sec_t sec;
 clock_nsec_t nsec;
 void *upl_ctx = ((void*)0);

 if (addr == 0 || f_offset == ((void*)0)) {
  return KERN_FAILURE;
 }
retry:
 lck_mtx_lock(&vm_swap_data_lock);

 swf = (struct swapfile*) queue_first(&swf_global_queue);

 while(queue_end(&swf_global_queue, (queue_entry_t)swf) == FALSE) {

  segidx = swf->swp_free_hint;

  swf_eligible = (swf->swp_flags & SWAP_READY) && (swf->swp_nseginuse < swf->swp_nsegs);

  if (swf_eligible) {

   while(segidx < swf->swp_nsegs) {

    byte_for_segidx = segidx >> 3;
    offset_within_byte = segidx % 8;

    if ((swf->swp_bitmap)[byte_for_segidx] & (1 << offset_within_byte)) {
     segidx++;
     continue;
    }

    (swf->swp_bitmap)[byte_for_segidx] |= (1 << offset_within_byte);

    file_offset = segidx * COMPRESSED_SWAP_CHUNK_SIZE;
    swf->swp_nseginuse++;
    swf->swp_io_count++;
    swf->swp_csegs[segidx] = c_seg;

    swapfile_index = swf->swp_index;
    vm_swapfile_total_segs_used++;

    clock_get_system_nanotime(&sec, &nsec);

    if (VM_SWAP_SHOULD_CREATE(sec) && !vm_swapfile_create_thread_running)
     thread_wakeup((event_t) &vm_swapfile_create_needed);

    lck_mtx_unlock(&vm_swap_data_lock);

    goto issue_io;
   }
  }
  swf = (struct swapfile*) queue_next(&swf->swp_queue);
 }
 assert(queue_end(&swf_global_queue, (queue_entry_t) swf));
 clock_get_system_nanotime(&sec, &nsec);

 if (VM_SWAP_SHOULD_CREATE(sec) && !vm_swapfile_create_thread_running)
  thread_wakeup((event_t) &vm_swapfile_create_needed);

 if (hibernate_flushing == FALSE || VM_SWAP_SHOULD_CREATE(sec)) {
  waiting = TRUE;
  assert_wait_timeout((event_t) &vm_num_swap_files, THREAD_INTERRUPTIBLE, 1000, 1000*NSEC_PER_USEC);
 } else
  hibernate_no_swapspace = TRUE;

 lck_mtx_unlock(&vm_swap_data_lock);

 if (waiting == TRUE) {
  thread_block(THREAD_CONTINUE_NULL);

  if (retried == FALSE && hibernate_flushing == TRUE) {
   retried = TRUE;
   goto retry;
  }
 }
 vm_swap_put_failures++;

 return KERN_FAILURE;

issue_io:
 assert(c_seg->c_busy_swapping);
 assert(c_seg->c_busy);
 assert(!c_seg->c_on_minorcompact_q);

 *f_offset = (swapfile_index << SWAP_DEVICE_SHIFT) | file_offset;

 if (soc) {
  soc->swp_c_seg = c_seg;
  soc->swp_c_size = size;

         soc->swp_swf = swf;

  soc->swp_io_error = 0;
  soc->swp_io_done = 0;

  upl_ctx = (void *)&soc->swp_upl_ctx;
 }
 error = vm_swapfile_io(swf->swp_vp, file_offset, addr, (int) (size / PAGE_SIZE_64), SWAP_WRITE, upl_ctx);

 if (error || upl_ctx == ((void*)0))
  return (vm_swap_put_finish(swf, f_offset, error));

 return KERN_SUCCESS;
}
