
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;


typedef int vfs_context_t ;
typedef scalar_t__ uio_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int task_t ;
struct vnode_attr {int va_linkid; } ;
struct proc {int dummy; } ;
struct fileproc {TYPE_1__* f_fglob; } ;
typedef size_t nspace_type_t ;
struct TYPE_17__ {scalar_t__ objid; scalar_t__ infoptr; scalar_t__ fdptr; scalar_t__ flags; scalar_t__ token; } ;
typedef TYPE_2__ namespace_handler_data ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_18__ {int v_flag; } ;
struct TYPE_16__ {scalar_t__ fg_data; int * fg_ops; scalar_t__ fg_flag; } ;
struct TYPE_15__ {int handler_busy; int * handler_proc; int handler_tid; } ;
struct TYPE_14__ {int flags; TYPE_4__* vp; scalar_t__ token; scalar_t__ vid; int arg; scalar_t__ op; } ;


 int EBUSY ;
 int EINVAL ;
 int MAX_NSPACE_ITEMS ;
 size_t NSPACE_HANDLER_SNAPSHOT ;
 void* NSPACE_ITEM_DONE ;
 int NSPACE_ITEM_NEW ;
 int NSPACE_ITEM_PROCESSING ;
 int PCATCH ;
 int PVFS ;
 int VATTR_INIT (struct vnode_attr*) ;
 scalar_t__ VATTR_IS_SUPPORTED (struct vnode_attr*,int ) ;
 int VATTR_WANTED (struct vnode_attr*,int ) ;
 int VNEEDSSNAPSHOT ;
 int assert (TYPE_4__*) ;
 int bsd_set_dependency_capable (int ) ;
 int copyout (scalar_t__*,scalar_t__,int) ;
 void* current_proc () ;
 int current_task () ;
 int current_thread () ;
 int falloc (struct proc*,struct fileproc**,scalar_t__*,int ) ;
 int fp_drop (struct proc*,scalar_t__,struct fileproc*,int) ;
 int fp_free (struct proc*,scalar_t__,struct fileproc*) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int msleep (scalar_t__,int *,int,char*,int ) ;
 scalar_t__ nspace_flags_matches_handler (int,size_t) ;
 int nspace_handler_exclusion_lock ;
 int nspace_handler_lock ;
 TYPE_12__* nspace_handlers ;
 int nspace_item_idx ;
 TYPE_11__* nspace_items ;
 scalar_t__ nspace_open_flags_for_type (size_t) ;
 scalar_t__ nspace_token_id ;
 int proc_fdlock (struct proc*) ;
 int proc_fdunlock (struct proc*) ;
 int procfdtbl_releasefd (struct proc*,scalar_t__,int *) ;
 int snapshot_timestamp ;
 int thread_tid (int ) ;
 scalar_t__ uio_offset (scalar_t__) ;
 scalar_t__ uio_resid (scalar_t__) ;
 int va_linkid ;
 int vfs_context_current () ;
 int vn_close (TYPE_4__*,scalar_t__,int ) ;
 int vn_open_with_vp (TYPE_4__*,scalar_t__,int ) ;
 int vnode_getattr (TYPE_4__*,struct vnode_attr*,int ) ;
 int vnode_getwithvid (TYPE_4__*,scalar_t__) ;
 int vnode_lock_spin (TYPE_4__*) ;
 int vnode_put (TYPE_4__*) ;
 int vnode_unlock (TYPE_4__*) ;
 int vnops ;
 int wakeup (scalar_t__) ;

__attribute__((used)) static int
wait_for_namespace_event(namespace_handler_data *nhd, nspace_type_t nspace_type)
{
 int i;
 int error = 0;
 int unblock = 0;
 task_t curtask;

 lck_mtx_lock(&nspace_handler_exclusion_lock);
 if (nspace_handlers[nspace_type].handler_busy) {
  lck_mtx_unlock(&nspace_handler_exclusion_lock);
  return EBUSY;
 }

 nspace_handlers[nspace_type].handler_busy = 1;
 lck_mtx_unlock(&nspace_handler_exclusion_lock);
 curtask = current_task();
 bsd_set_dependency_capable (curtask);

 lck_mtx_lock(&nspace_handler_lock);
 if (nspace_handlers[nspace_type].handler_proc == ((void*)0)) {
  nspace_handlers[nspace_type].handler_tid = thread_tid(current_thread());
  nspace_handlers[nspace_type].handler_proc = current_proc();
 }

 if (nspace_type == NSPACE_HANDLER_SNAPSHOT &&
   (snapshot_timestamp == 0 || snapshot_timestamp == ~0)) {
  error = EINVAL;
 }

 while (error == 0) {


  for (i = 0; i < MAX_NSPACE_ITEMS; i++) {
   if (nspace_items[i].flags & NSPACE_ITEM_NEW) {
    if (nspace_flags_matches_handler(nspace_items[i].flags, nspace_type)) {
     break;
    }
   }
  }

  if (i >= MAX_NSPACE_ITEMS) {

   error = msleep((caddr_t)&nspace_item_idx, &nspace_handler_lock, PVFS|PCATCH, "namespace-items", 0);
   if ((nspace_type == NSPACE_HANDLER_SNAPSHOT) && (snapshot_timestamp == 0 || snapshot_timestamp == ~0)) {

    error = EINVAL;
    break;
   }
   continue;
  }

  nspace_items[i].flags &= ~NSPACE_ITEM_NEW;
  nspace_items[i].flags |= NSPACE_ITEM_PROCESSING;
  nspace_items[i].token = ++nspace_token_id;

  assert(nspace_items[i].vp);
  struct fileproc *fp;
  int32_t indx;
  int32_t fmode;
  struct proc *p = current_proc();
  vfs_context_t ctx = vfs_context_current();
  struct vnode_attr va;
  bool vn_get_succsessful = 0;
  bool vn_open_successful = 0;
  bool fp_alloc_successful = 0;





  fmode = nspace_open_flags_for_type(nspace_type);
  error = vnode_getwithvid(nspace_items[i].vp, nspace_items[i].vid);
  if (error) goto cleanup;
  vn_get_succsessful = 1;

  error = vn_open_with_vp(nspace_items[i].vp, fmode, ctx);
  if (error) goto cleanup;
  vn_open_successful = 1;

  error = falloc(p, &fp, &indx, ctx);
  if (error) goto cleanup;
  fp_alloc_successful = 1;

  fp->f_fglob->fg_flag = fmode;
  fp->f_fglob->fg_ops = &vnops;
  fp->f_fglob->fg_data = (caddr_t)nspace_items[i].vp;

  proc_fdlock(p);
  procfdtbl_releasefd(p, indx, ((void*)0));
  fp_drop(p, indx, fp, 1);
  proc_fdunlock(p);





  error = copyout(&nspace_items[i].token, nhd->token, sizeof(uint32_t));
  if (error) goto cleanup;
  error = copyout(&nspace_items[i].op, nhd->flags, sizeof(uint64_t));
  if (error) goto cleanup;
  error = copyout(&indx, nhd->fdptr, sizeof(uint32_t));
  if (error) goto cleanup;
  if (nhd->infoptr) {
   uio_t uio = (uio_t)nspace_items[i].arg;
   uint64_t u_offset, u_length;

   if (uio) {
    u_offset = uio_offset(uio);
    u_length = uio_resid(uio);
   } else {
    u_offset = 0;
    u_length = 0;
   }
   error = copyout(&u_offset, nhd->infoptr, sizeof(uint64_t));
   if (error) goto cleanup;
   error = copyout(&u_length, nhd->infoptr + sizeof(uint64_t), sizeof(uint64_t));
   if (error) goto cleanup;
  }

  if (nhd->objid) {
   VATTR_INIT(&va);
   VATTR_WANTED(&va, va_linkid);
   error = vnode_getattr(nspace_items[i].vp, &va, ctx);
   if (error) goto cleanup;

   uint64_t linkid = 0;
   if (VATTR_IS_SUPPORTED (&va, va_linkid)) {
    linkid = (uint64_t)va.va_linkid;
   }
   error = copyout(&linkid, nhd->objid, sizeof(uint64_t));
  }
cleanup:
  if (error) {
   if (fp_alloc_successful) fp_free(p, indx, fp);
   if (vn_open_successful) vn_close(nspace_items[i].vp, fmode, ctx);
   unblock = 1;
  }

  if (vn_get_succsessful) vnode_put(nspace_items[i].vp);

  break;
 }

 if (unblock) {
  if (nspace_items[i].vp && (nspace_items[i].vp->v_flag & VNEEDSSNAPSHOT)) {
   vnode_lock_spin(nspace_items[i].vp);
   nspace_items[i].vp->v_flag &= ~VNEEDSSNAPSHOT;
   vnode_unlock(nspace_items[i].vp);
  }
  nspace_items[i].vp = ((void*)0);
  nspace_items[i].vid = 0;
  nspace_items[i].flags = NSPACE_ITEM_DONE;
  nspace_items[i].token = 0;

  wakeup((caddr_t)&(nspace_items[i].vp));
 }

 if (nspace_type == NSPACE_HANDLER_SNAPSHOT) {

  if (error && (snapshot_timestamp == 0 || snapshot_timestamp == ~0)) {
   for(i = 0; i < MAX_NSPACE_ITEMS; i++) {
    if (nspace_items[i].flags & NSPACE_ITEM_NEW) {
     if (nspace_flags_matches_handler(nspace_items[i].flags, nspace_type)) {
      nspace_items[i].vp = ((void*)0);
      nspace_items[i].vid = 0;
      nspace_items[i].flags = NSPACE_ITEM_DONE;
      nspace_items[i].token = 0;

      wakeup((caddr_t)&(nspace_items[i].vp));
     }
    }
   }
  }
 }

 lck_mtx_unlock(&nspace_handler_lock);

 lck_mtx_lock(&nspace_handler_exclusion_lock);
 nspace_handlers[nspace_type].handler_busy = 0;
 lck_mtx_unlock(&nspace_handler_exclusion_lock);

 return error;
}
