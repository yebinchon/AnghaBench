
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct trim_list {int tl_offset; struct trim_list* tl_next; int tl_length; } ;
struct swapfile {int swp_flags; int swp_delayed_trim_count; struct trim_list* swp_delayed_trim_list_head; } ;
typedef int event_t ;
typedef scalar_t__ clock_sec_t ;
typedef int clock_nsec_t ;


 int COMPRESSED_SWAP_CHUNK_SIZE ;
 scalar_t__ FALSE ;
 int SWAP_READY ;
 int SWAP_RECLAIM ;
 int SWAP_SLOT_MASK ;
 scalar_t__ TRUE ;
 scalar_t__ VM_SWAP_SHOULD_TRIM (struct swapfile*) ;
 int clock_get_system_nanotime (scalar_t__*,int *) ;
 scalar_t__ dont_trim_until_ts ;
 struct trim_list* kalloc (int) ;
 int kfree (struct trim_list*,int) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 scalar_t__ swp_trim_supported ;
 int thread_wakeup (int ) ;
 int vm_swap_data_lock ;
 int vm_swap_free_delayed_count ;
 int vm_swap_free_now (struct swapfile*,int) ;
 int vm_swap_free_now_count ;
 int vm_swapfile_create_needed ;
 int vm_swapfile_create_thread_running ;
 struct swapfile* vm_swapfile_for_handle (int) ;

void
vm_swap_free(uint64_t f_offset)
{
 struct swapfile *swf = ((void*)0);
 struct trim_list *tl = ((void*)0);
        clock_sec_t sec;
        clock_nsec_t nsec;

 if (swp_trim_supported == TRUE)
  tl = kalloc(sizeof(struct trim_list));

 lck_mtx_lock(&vm_swap_data_lock);

 swf = vm_swapfile_for_handle(f_offset);

 if (swf && (swf->swp_flags & (SWAP_READY | SWAP_RECLAIM))) {

  if (swp_trim_supported == FALSE || (swf->swp_flags & SWAP_RECLAIM)) {






   vm_swap_free_now(swf, f_offset);

   vm_swap_free_now_count++;
   goto done;
  }
  tl->tl_offset = f_offset & SWAP_SLOT_MASK;
  tl->tl_length = COMPRESSED_SWAP_CHUNK_SIZE;

  tl->tl_next = swf->swp_delayed_trim_list_head;
  swf->swp_delayed_trim_list_head = tl;
  swf->swp_delayed_trim_count++;
  tl = ((void*)0);

  if (VM_SWAP_SHOULD_TRIM(swf) && !vm_swapfile_create_thread_running) {
   clock_get_system_nanotime(&sec, &nsec);

   if (sec > dont_trim_until_ts)
    thread_wakeup((event_t) &vm_swapfile_create_needed);
  }
  vm_swap_free_delayed_count++;
 }
done:
 lck_mtx_unlock(&vm_swap_data_lock);

 if (tl != ((void*)0))
  kfree(tl, sizeof(struct trim_list));
}
