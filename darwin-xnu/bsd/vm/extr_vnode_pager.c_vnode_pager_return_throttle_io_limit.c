
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vnode {int dummy; } ;


 int cluster_throttle_io_limit (struct vnode*,int *) ;

uint32_t
vnode_pager_return_throttle_io_limit(struct vnode *vp, uint32_t *limit)
{
 return(cluster_throttle_io_limit(vp, limit));
}
