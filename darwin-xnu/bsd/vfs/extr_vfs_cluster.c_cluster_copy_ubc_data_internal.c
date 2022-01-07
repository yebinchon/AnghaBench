
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
struct uio {int uio_offset; int uio_segflg; } ;
typedef scalar_t__ memory_object_control_t ;


 int DBG_FSRW ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int FSDBG_CODE (int ,int) ;
 int KERNEL_DEBUG (int,int,int,int,int,int ) ;
 scalar_t__ MEMORY_OBJECT_CONTROL_NULL ;
 int PAGE_MASK_64 ;
 int UBC_FLAGS_NONE ;
 int UIO_PHYS_SYSSPACE ;
 int UIO_PHYS_USERSPACE ;
 int UIO_PHYS_USERSPACE32 ;
 int UIO_PHYS_USERSPACE64 ;







 int memory_object_control_uiomove (scalar_t__,int,struct uio*,int,int,int,int) ;
 scalar_t__ ubc_getobject (int ,int ) ;
 int uio_resid (struct uio*) ;

__attribute__((used)) static int
cluster_copy_ubc_data_internal(vnode_t vp, struct uio *uio, int *io_resid, int mark_dirty, int take_reference)
{
 int segflg;
 int io_size;
 int xsize;
 int start_offset;
 int retval = 0;
 memory_object_control_t control;

 io_size = *io_resid;

 KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 34)) | DBG_FUNC_START,
       (int)uio->uio_offset, io_size, mark_dirty, take_reference, 0);

 control = ubc_getobject(vp, UBC_FLAGS_NONE);

 if (control == MEMORY_OBJECT_CONTROL_NULL) {
  KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 34)) | DBG_FUNC_END,
        (int)uio->uio_offset, io_size, retval, 3, 0);

  return(0);
 }
 segflg = uio->uio_segflg;

 switch(segflg) {

   case 129:
   case 132:
  uio->uio_segflg = UIO_PHYS_USERSPACE32;
  break;

   case 128:
   case 131:
  uio->uio_segflg = UIO_PHYS_USERSPACE64;
  break;

   case 130:
   case 133:
  uio->uio_segflg = UIO_PHYS_USERSPACE;
  break;

   case 134:
  uio->uio_segflg = UIO_PHYS_SYSSPACE;
  break;
 }

 if ( (io_size = *io_resid) ) {
         start_offset = (int)(uio->uio_offset & PAGE_MASK_64);
  xsize = uio_resid(uio);

  retval = memory_object_control_uiomove(control, uio->uio_offset - start_offset, uio,
             start_offset, io_size, mark_dirty, take_reference);
  xsize -= uio_resid(uio);
  io_size -= xsize;
 }
 uio->uio_segflg = segflg;
 *io_resid = io_size;

 KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 34)) | DBG_FUNC_END,
       (int)uio->uio_offset, io_size, retval, 0x80000000 | segflg, 0);

 return(retval);
}
