
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
struct uio {int dummy; } ;


 int cluster_copy_ubc_data_internal (int ,struct uio*,int*,int,int) ;

int
cluster_copy_ubc_data(vnode_t vp, struct uio *uio, int *io_resid, int mark_dirty)
{

 return (cluster_copy_ubc_data_internal(vp, uio, io_resid, mark_dirty, 1));
}
