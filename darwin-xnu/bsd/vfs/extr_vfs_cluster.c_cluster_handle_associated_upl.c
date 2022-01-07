
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int upl_t ;
typedef int upl_size_t ;
typedef int upl_page_info_t ;
typedef int upl_offset_t ;
struct clios {int io_mtxp; } ;
typedef int kern_return_t ;
typedef scalar_t__ boolean_t ;


 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int UPL_ABORT_DUMP_PAGES ;
 int * UPL_GET_INTERNAL_PAGE_LIST (int ) ;
 int assert (int) ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 int printf (char*,int,int) ;
 int trunc_page_32 (int) ;
 int upl_abort_range (int ,int,int,int ,scalar_t__*) ;
 int upl_associated_upl (int ) ;
 int upl_deallocate (int ) ;
 int upl_get_size (int ) ;
 int upl_page_get_mark (int *,int const) ;
 int upl_page_set_mark (int *,int const,int) ;
 int upl_set_associated_upl (int ,int *) ;

__attribute__((used)) static void cluster_handle_associated_upl(struct clios *iostate, upl_t upl,
            upl_offset_t upl_offset, upl_size_t size)
{
 if (!size)
  return;

 upl_t associated_upl = upl_associated_upl(upl);

 if (!associated_upl)
  return;
 upl_page_info_t *pl = UPL_GET_INTERNAL_PAGE_LIST(upl);
 bool is_unaligned = upl_page_get_mark(pl, 0);

 if (is_unaligned) {
  upl_page_info_t *assoc_pl = UPL_GET_INTERNAL_PAGE_LIST(associated_upl);

  upl_offset_t upl_end = upl_offset + size;
  assert(upl_end >= PAGE_SIZE);

  upl_size_t assoc_upl_size = upl_get_size(associated_upl);







  assert(upl_offset);
  if (upl_offset)
   upl_offset = trunc_page_32(upl_offset - 1);

  lck_mtx_lock_spin(&iostate->io_mtxp);


  if (upl_offset
   && !upl_page_get_mark(assoc_pl, upl_offset >> PAGE_SHIFT)) {




   upl_page_set_mark(assoc_pl, upl_offset >> PAGE_SHIFT, 1);
   upl_offset += PAGE_SIZE;
  }
  if (upl_end > assoc_upl_size)
   upl_end = assoc_upl_size;
  else {
   upl_end = trunc_page_32(upl_end);
   const int last_pg = (upl_end >> PAGE_SHIFT) - 1;

   if (!upl_page_get_mark(assoc_pl, last_pg)) {




    upl_page_set_mark(assoc_pl, last_pg, 1);
    upl_end -= PAGE_SIZE;
   }
  }

  lck_mtx_unlock(&iostate->io_mtxp);





  if (upl_end <= upl_offset)
   return;

  size = upl_end - upl_offset;
 } else {
  assert(!(upl_offset & PAGE_MASK));
  assert(!(size & PAGE_MASK));
 }

 boolean_t empty;





 kern_return_t kr = upl_abort_range(associated_upl, upl_offset, size,
            UPL_ABORT_DUMP_PAGES, &empty);

 assert(!kr);

 if (!kr && empty) {
  upl_set_associated_upl(upl, ((void*)0));
  upl_deallocate(associated_upl);
 }
}
