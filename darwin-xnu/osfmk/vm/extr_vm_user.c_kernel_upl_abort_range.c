
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int upl_t ;
typedef int upl_size_t ;
typedef int upl_offset_t ;
typedef int kern_return_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 int UPL_COMMIT_FREE_ON_EMPTY ;
 int UPL_COMMIT_NOTIFY_EMPTY ;
 int upl_abort_range (int ,int ,int ,int,scalar_t__*) ;
 int upl_deallocate (int ) ;

kern_return_t
kernel_upl_abort_range(
 upl_t upl,
 upl_offset_t offset,
 upl_size_t size,
 int abort_flags)
{
 kern_return_t kr;
 boolean_t finished = FALSE;

 if (abort_flags & UPL_COMMIT_FREE_ON_EMPTY)
  abort_flags |= UPL_COMMIT_NOTIFY_EMPTY;

 kr = upl_abort_range(upl, offset, size, abort_flags, &finished);

 if ((abort_flags & UPL_COMMIT_FREE_ON_EMPTY) && finished)
  upl_deallocate(upl);

 return kr;
}
