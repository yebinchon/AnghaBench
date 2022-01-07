
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef scalar_t__ off_t ;


 int EINVAL ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ PAGE_SIZE_64 ;
 int UPL_POP_DIRTY ;
 scalar_t__ ubc_page_op (int ,scalar_t__,int ,int *,int*) ;

int
is_file_clean(vnode_t vp, off_t filesize)
{
        off_t f_offset;
 int flags;
 int total_dirty = 0;

 for (f_offset = 0; f_offset < filesize; f_offset += PAGE_SIZE_64) {
         if (ubc_page_op(vp, f_offset, 0, ((void*)0), &flags) == KERN_SUCCESS) {
          if (flags & UPL_POP_DIRTY) {
           total_dirty++;
   }
  }
 }
 if (total_dirty)
         return(EINVAL);

 return (0);
}
