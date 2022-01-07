
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
struct uio {int dummy; } ;
typedef int off_t ;


 int cluster_read_ext (int ,struct uio*,int ,int,int *,int *) ;

int
cluster_read(vnode_t vp, struct uio *uio, off_t filesize, int xflags)
{
        return cluster_read_ext(vp, uio, filesize, xflags, ((void*)0), ((void*)0));
}
