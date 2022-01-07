
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
struct uio {int dummy; } ;
typedef int off_t ;


 int cluster_write_ext (int ,struct uio*,int ,int ,int ,int ,int,int *,int *) ;

int
cluster_write(vnode_t vp, struct uio *uio, off_t oldEOF, off_t newEOF, off_t headOff, off_t tailOff, int xflags)
{
        return cluster_write_ext(vp, uio, oldEOF, newEOF, headOff, tailOff, xflags, ((void*)0), ((void*)0));
}
