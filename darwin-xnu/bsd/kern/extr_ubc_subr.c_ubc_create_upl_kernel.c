
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_tag_t ;
typedef int * upl_t ;
typedef int upl_page_info_t ;
struct vnode {int dummy; } ;
typedef int off_t ;
typedef scalar_t__ memory_object_control_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_SUCCESS ;
 int MAX_UPL_SIZE_BYTES ;
 scalar_t__ MEMORY_OBJECT_CONTROL_NULL ;
 int PAGE_SIZE ;
 int UBC_FLAGS_NONE ;
 int UPL_CLEAN_IN_PLACE ;
 int UPL_COPYOUT_FROM ;
 int UPL_FOR_PAGEOUT ;
 int * UPL_GET_INTERNAL_PAGE_LIST (int *) ;
 int UPL_NOBLOCK ;
 int UPL_NO_SYNC ;
 int UPL_RET_ONLY_ABSENT ;
 int UPL_RET_ONLY_DIRTY ;
 int UPL_SET_INTERNAL ;
 int UPL_SET_LITE ;
 int UPL_UBC_MSYNC ;
 int UPL_UBC_PAGEIN ;
 int UPL_UBC_PAGEOUT ;
 int UPL_WILL_BE_DUMPED ;
 scalar_t__ memory_object_upl_request (scalar_t__,int ,int,int **,int *,int *,int,int ) ;
 scalar_t__ ubc_getobject (struct vnode*,int ) ;

kern_return_t
ubc_create_upl_kernel(
 struct vnode *vp,
 off_t f_offset,
 int bufsize,
 upl_t *uplp,
 upl_page_info_t **plp,
 int uplflags,
 vm_tag_t tag)
{
 memory_object_control_t control;
 kern_return_t kr;

 if (plp != ((void*)0))
  *plp = ((void*)0);
 *uplp = ((void*)0);

 if (bufsize & 0xfff)
  return KERN_INVALID_ARGUMENT;

 if (bufsize > MAX_UPL_SIZE_BYTES)
  return KERN_INVALID_ARGUMENT;

 if (uplflags & (UPL_UBC_MSYNC | UPL_UBC_PAGEOUT | UPL_UBC_PAGEIN)) {

  if (uplflags & UPL_UBC_MSYNC) {
   uplflags &= UPL_RET_ONLY_DIRTY;

   uplflags |= UPL_COPYOUT_FROM | UPL_CLEAN_IN_PLACE |
        UPL_SET_INTERNAL | UPL_SET_LITE;

  } else if (uplflags & UPL_UBC_PAGEOUT) {
   uplflags &= UPL_RET_ONLY_DIRTY;

   if (uplflags & UPL_RET_ONLY_DIRTY)
    uplflags |= UPL_NOBLOCK;

   uplflags |= UPL_FOR_PAGEOUT | UPL_CLEAN_IN_PLACE |
                                    UPL_COPYOUT_FROM | UPL_SET_INTERNAL | UPL_SET_LITE;
  } else {
   uplflags |= UPL_RET_ONLY_ABSENT |
        UPL_NO_SYNC | UPL_CLEAN_IN_PLACE |
        UPL_SET_INTERNAL | UPL_SET_LITE;
   if (bufsize > PAGE_SIZE)
    uplflags |= UPL_NOBLOCK;
  }
 } else {
  uplflags &= ~UPL_FOR_PAGEOUT;

  if (uplflags & UPL_WILL_BE_DUMPED) {
   uplflags &= ~UPL_WILL_BE_DUMPED;
   uplflags |= (UPL_NO_SYNC|UPL_SET_INTERNAL);
  } else
   uplflags |= (UPL_NO_SYNC|UPL_CLEAN_IN_PLACE|UPL_SET_INTERNAL);
 }
 control = ubc_getobject(vp, UBC_FLAGS_NONE);
 if (control == MEMORY_OBJECT_CONTROL_NULL)
  return KERN_INVALID_ARGUMENT;

 kr = memory_object_upl_request(control, f_offset, bufsize, uplp, ((void*)0), ((void*)0), uplflags, tag);
 if (kr == KERN_SUCCESS && plp != ((void*)0))
  *plp = UPL_GET_INTERNAL_PAGE_LIST(*uplp);
 return kr;
}
