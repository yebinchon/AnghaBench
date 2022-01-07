
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct vnode {scalar_t__ v_type; int v_flag; TYPE_1__* v_mount; } ;
struct timespec {scalar_t__ tv_nsec; void* tv_sec; } ;
typedef size_t nspace_type_t ;
typedef int * caddr_t ;
struct TYPE_6__ {int * handler_proc; } ;
struct TYPE_5__ {int op; int flags; int refcount; int token; int * arg; struct vnode* vp; int vid; } ;
struct TYPE_4__ {int mnt_kern_flag; } ;


 int EDEADLK ;
 int ETIMEDOUT ;
 int EWOULDBLOCK ;
 int MAX_NSPACE_ITEMS ;
 int MNTK_VIRTUALDEV ;
 int NAMESPACE_HANDLER_SNAPSHOT_EVENT ;
 int NSPACE_ITEM_CANCELLED ;
 int NSPACE_ITEM_DONE ;
 int NSPACE_ITEM_NEW ;
 int NSPACE_ITEM_RESET_TIMER ;
 int NSPACE_ITEM_SNAPSHOT_EVENT ;
 void* NSPACE_REARM_NO_ARG ;
 int PCATCH ;
 int PVFS ;
 scalar_t__ VDIR ;
 scalar_t__ VLNK ;
 int VNEEDSSNAPSHOT ;
 scalar_t__ VREG ;
 int current_proc () ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int msleep (int *,int *,int,char*,struct timespec*) ;
 int nspace_allow_virtual_devs ;
 int nspace_handler_lock ;
 void* nspace_handler_timeout ;
 TYPE_3__* nspace_handlers ;
 scalar_t__ nspace_is_special_process (int ) ;
 int nspace_item_flags_for_type (size_t) ;
 int nspace_item_idx ;
 TYPE_2__* nspace_items ;
 int nspace_token_id ;
 size_t nspace_type_for_op (int) ;
 int printf (char*,int) ;
 int vnode_lock_spin (struct vnode*) ;
 int vnode_unlock (struct vnode*) ;
 int vnode_vid (struct vnode*) ;
 int wakeup (int *) ;

int
resolve_nspace_item_ext(struct vnode *vp, uint64_t op, void *arg)
{
 int i, error, keep_waiting;
 struct timespec ts;
 nspace_type_t nspace_type = nspace_type_for_op(op);


 if (vp->v_type != VREG && vp->v_type != VDIR && vp->v_type != VLNK) {
  return 0;
 }
 if ( (op & NAMESPACE_HANDLER_SNAPSHOT_EVENT)
     && (vp->v_mount != ((void*)0))
     && (vp->v_mount->mnt_kern_flag & MNTK_VIRTUALDEV)
     && !nspace_allow_virtual_devs) {

  return 0;
 }


 if (nspace_handlers[nspace_type].handler_proc == ((void*)0)) {
  return 0;
 }

 if (nspace_is_special_process(current_proc())) {
  return EDEADLK;
 }

 lck_mtx_lock(&nspace_handler_lock);

retry:
 for(i=0; i < MAX_NSPACE_ITEMS; i++) {
  if (vp == nspace_items[i].vp && op == nspace_items[i].op) {
   break;
  }
 }

 if (i >= MAX_NSPACE_ITEMS) {
  for(i=0; i < MAX_NSPACE_ITEMS; i++) {
   if (nspace_items[i].flags == 0) {
    break;
   }
  }
 } else {
  nspace_items[i].refcount++;
 }

 if (i >= MAX_NSPACE_ITEMS) {
  ts.tv_sec = nspace_handler_timeout;
  ts.tv_nsec = 0;

  error = msleep((caddr_t)&nspace_token_id, &nspace_handler_lock, PVFS|PCATCH, "nspace-no-space", &ts);
  if (error == 0) {

   goto retry;
  } else {
   lck_mtx_unlock(&nspace_handler_lock);
   return error;
  }
 }






 if (vp != nspace_items[i].vp) {
  nspace_items[i].vp = vp;
  nspace_items[i].arg = (arg == NSPACE_REARM_NO_ARG) ? ((void*)0) : arg;
  nspace_items[i].op = op;
  nspace_items[i].vid = vnode_vid(vp);
  nspace_items[i].flags = NSPACE_ITEM_NEW;
  nspace_items[i].flags |= nspace_item_flags_for_type(nspace_type);
  if (nspace_items[i].flags & NSPACE_ITEM_SNAPSHOT_EVENT) {
   if (arg) {
    vnode_lock_spin(vp);
    vp->v_flag |= VNEEDSSNAPSHOT;
    vnode_unlock(vp);
   }
  }

  nspace_items[i].token = 0;
  nspace_items[i].refcount = 1;

  wakeup((caddr_t)&nspace_item_idx);
 }





 keep_waiting = 1;
 while(keep_waiting) {
  ts.tv_sec = nspace_handler_timeout;
  ts.tv_nsec = 0;
  error = msleep((caddr_t)&(nspace_items[i].vp), &nspace_handler_lock, PVFS|PCATCH, "namespace-done", &ts);

  if (nspace_items[i].flags & NSPACE_ITEM_DONE) {
   error = 0;
  } else if (nspace_items[i].flags & NSPACE_ITEM_CANCELLED) {
   error = nspace_items[i].token;
  } else if (error == EWOULDBLOCK || error == ETIMEDOUT) {
   if (nspace_items[i].flags & NSPACE_ITEM_RESET_TIMER) {
    nspace_items[i].flags &= ~NSPACE_ITEM_RESET_TIMER;
    continue;
   } else {
    error = ETIMEDOUT;
   }
  } else if (error == 0) {

   printf("woken up for token %d but it's not done, cancelled or timedout and error == 0.\n",
          nspace_items[i].token);
  }

  if (--nspace_items[i].refcount == 0) {
   nspace_items[i].vp = ((void*)0);
   nspace_items[i].arg = ((void*)0);
   nspace_items[i].token = 0;
   nspace_items[i].flags = 0;
  }
  wakeup(&nspace_token_id);
  keep_waiting = 0;
 }

 lck_mtx_unlock(&nspace_handler_lock);

 return error;
}
