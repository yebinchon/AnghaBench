
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_7__ {int * slh_first; } ;
struct TYPE_6__ {TYPE_5__ v_knotes; } ;


 int KNOTE (TYPE_5__*,int) ;
 int vnode_lock (TYPE_1__*) ;
 int vnode_unlock (TYPE_1__*) ;

void
lock_vnode_and_post(vnode_t vp, int kevent_num)
{

 if (vp->v_knotes.slh_first != ((void*)0)) {
  vnode_lock(vp);
  KNOTE(&vp->v_knotes, kevent_num);
  vnode_unlock(vp);
 }
}
