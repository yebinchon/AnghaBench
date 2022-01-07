
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int v_specsize; } ;
typedef int dev_t ;
struct TYPE_2__ {int (* d_psize ) (int ) ;} ;


 void* DEV_BSIZE ;
 TYPE_1__* bdevsw ;
 size_t major (int ) ;
 size_t nblkdev ;
 int stub1 (int ) ;

__attribute__((used)) static void
set_blocksize(struct vnode *vp, dev_t dev)
{
    int (*size)(dev_t);
    int rsize;

    if ((major(dev) < nblkdev) && (size = bdevsw[major(dev)].d_psize)) {
        rsize = (*size)(dev);
 if (rsize <= 0)
     vp->v_specsize = DEV_BSIZE;
 else
     vp->v_specsize = rsize;
    }
    else
     vp->v_specsize = DEV_BSIZE;
}
