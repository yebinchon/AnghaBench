
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trim_list {int tl_offset; struct trim_list* tl_next; } ;
struct swapfile {int* swp_bitmap; unsigned int swp_free_hint; int swp_nseginuse; int ** swp_csegs; int swp_vp; scalar_t__ swp_delayed_trim_count; struct trim_list* swp_delayed_trim_list_head; } ;


 int COMPRESSED_SWAP_CHUNK_SIZE ;
 int TRUE ;
 int kfree (struct trim_list*,int) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int vm_swap_data_lock ;
 int vm_swapfile_total_segs_used ;
 int vnode_trim_list (int ,struct trim_list*,int ) ;

__attribute__((used)) static void
vm_swap_do_delayed_trim(struct swapfile *swf)
{
 struct trim_list *tl, *tl_head;

 lck_mtx_lock(&vm_swap_data_lock);

 tl_head = swf->swp_delayed_trim_list_head;
 swf->swp_delayed_trim_list_head = ((void*)0);
 swf->swp_delayed_trim_count = 0;

 lck_mtx_unlock(&vm_swap_data_lock);

 vnode_trim_list(swf->swp_vp, tl_head, TRUE);

 while ((tl = tl_head) != ((void*)0)) {
  unsigned int segidx = 0;
  unsigned int byte_for_segidx = 0;
  unsigned int offset_within_byte = 0;

  lck_mtx_lock(&vm_swap_data_lock);

  segidx = (unsigned int) (tl->tl_offset / COMPRESSED_SWAP_CHUNK_SIZE);

  byte_for_segidx = segidx >> 3;
  offset_within_byte = segidx % 8;

  if ((swf->swp_bitmap)[byte_for_segidx] & (1 << offset_within_byte)) {

   (swf->swp_bitmap)[byte_for_segidx] &= ~(1 << offset_within_byte);

   swf->swp_csegs[segidx] = ((void*)0);

   swf->swp_nseginuse--;
   vm_swapfile_total_segs_used--;

   if (segidx < swf->swp_free_hint) {
    swf->swp_free_hint = segidx;
   }
  }
  lck_mtx_unlock(&vm_swap_data_lock);

  tl_head = tl->tl_next;

  kfree(tl, sizeof(struct trim_list));
 }
}
