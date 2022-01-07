
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int off_t ;
typedef int errno_t ;


 int EINVAL ;
 int ubc_msync_internal (int ,int ,int ,int *,int,int*) ;

errno_t
ubc_msync(vnode_t vp, off_t beg_off, off_t end_off, off_t *resid_off, int flags)
{
        int retval;
 int io_errno = 0;

 if (resid_off)
         *resid_off = beg_off;

        retval = ubc_msync_internal(vp, beg_off, end_off, resid_off, flags, &io_errno);

 if (retval == 0 && io_errno == 0)
         return (EINVAL);
 return (io_errno);
}
