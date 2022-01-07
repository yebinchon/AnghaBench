
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* vnode_t ;
struct vnode {int dummy; } ;
struct TYPE_6__ {struct vnode** tqe_prev; } ;
struct TYPE_7__ {int v_lflag; TYPE_1__ v_freelist; } ;


 int VNAMED_FSHASH ;
 int panic (char*) ;
 int vnode_lock_spin (TYPE_2__*) ;
 int vnode_unlock (TYPE_2__*) ;

int
vnode_addfsref(vnode_t vp)
{
 vnode_lock_spin(vp);
 if (vp->v_lflag & VNAMED_FSHASH)
  panic("add_fsref: vp already has named reference");
 if ((vp->v_freelist.tqe_prev != (struct vnode **)0xdeadb))
         panic("addfsref: vp on the free list\n");
 vp->v_lflag |= VNAMED_FSHASH;
 vnode_unlock(vp);
 return(0);

}
