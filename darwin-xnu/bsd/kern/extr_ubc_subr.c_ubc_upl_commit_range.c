
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int upl_t ;
typedef int upl_size_t ;
typedef int upl_page_info_t ;
typedef int upl_offset_t ;
typedef int kern_return_t ;
typedef scalar_t__ boolean_t ;


 int KERN_INVALID_ARGUMENT ;
 int MAX_UPL_SIZE_BYTES ;
 int PAGE_SHIFT ;
 int UPL_COMMIT_FREE_ON_EMPTY ;
 int UPL_COMMIT_KERNEL_ONLY_FLAGS ;
 int UPL_COMMIT_NOTIFY_EMPTY ;
 int * UPL_GET_INTERNAL_PAGE_LIST (int ) ;
 int upl_commit_range (int ,int ,int ,int,int *,int,scalar_t__*) ;
 int upl_deallocate (int ) ;

kern_return_t
ubc_upl_commit_range(
 upl_t upl,
 upl_offset_t offset,
 upl_size_t size,
 int flags)
{
 upl_page_info_t *pl;
 boolean_t empty;
 kern_return_t kr;

 if (flags & UPL_COMMIT_FREE_ON_EMPTY)
  flags |= UPL_COMMIT_NOTIFY_EMPTY;

 if (flags & UPL_COMMIT_KERNEL_ONLY_FLAGS) {
  return KERN_INVALID_ARGUMENT;
 }

 pl = UPL_GET_INTERNAL_PAGE_LIST(upl);

 kr = upl_commit_range(upl, offset, size, flags,
         pl, MAX_UPL_SIZE_BYTES >> PAGE_SHIFT, &empty);

 if((flags & UPL_COMMIT_FREE_ON_EMPTY) && empty)
  upl_deallocate(upl);

 return kr;
}
