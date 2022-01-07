
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vnode_t ;
typedef TYPE_2__* buf_t ;
struct TYPE_5__ {scalar_t__ le_next; } ;
struct TYPE_6__ {scalar_t__ b_vp; TYPE_1__ b_vnbufs; } ;


 scalar_t__ NOLIST ;
 int bufremvn (TYPE_2__*) ;

__attribute__((used)) static void
brelvp_locked(buf_t bp)
{



 if (bp->b_vnbufs.le_next != NOLIST)
  bufremvn(bp);

 bp->b_vp = (vnode_t)((void*)0);
}
