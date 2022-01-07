
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int upl_t ;
typedef int upl_size_t ;
typedef int upl_page_info_array_t ;
typedef int upl_offset_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 int KERN_INVALID_ARGUMENT ;
 int UPL_COMMIT_FREE_ON_EMPTY ;
 int UPL_COMMIT_KERNEL_ONLY_FLAGS ;
 int UPL_COMMIT_NOTIFY_EMPTY ;
 int upl_commit_range (int ,int ,int ,int,int ,int ,scalar_t__*) ;
 int upl_deallocate (int ) ;

kern_return_t
kernel_upl_commit_range(
 upl_t upl,
 upl_offset_t offset,
 upl_size_t size,
 int flags,
 upl_page_info_array_t pl,
 mach_msg_type_number_t count)
{
 boolean_t finished = FALSE;
 kern_return_t kr;

 if (flags & UPL_COMMIT_FREE_ON_EMPTY)
  flags |= UPL_COMMIT_NOTIFY_EMPTY;

 if (flags & UPL_COMMIT_KERNEL_ONLY_FLAGS) {
  return KERN_INVALID_ARGUMENT;
 }

 kr = upl_commit_range(upl, offset, size, flags, pl, count, &finished);

 if ((flags & UPL_COMMIT_NOTIFY_EMPTY) && finished)
  upl_deallocate(upl);

 return kr;
}
