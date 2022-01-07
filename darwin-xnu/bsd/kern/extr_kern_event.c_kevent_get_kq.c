
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int trp_value; } ;
typedef TYPE_1__ workq_threadreq_param_t ;
typedef int thread_t ;
struct proc {struct filedesc* p_fd; } ;
struct kqworkloop {int kqwl_params; scalar_t__ kqwl_dynamicid; } ;
struct kqueue {int kq_state; } ;
struct fileproc {int dummy; } ;
struct filedesc {struct kqueue* fd_wqkqueue; } ;
typedef scalar_t__ kqueue_id_t ;


 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 unsigned int KEVENT_FLAG_DYNAMIC_KQUEUE ;
 unsigned int KEVENT_FLAG_DYNAMIC_KQ_MUST_EXIST ;
 unsigned int KEVENT_FLAG_DYNAMIC_KQ_MUST_NOT_EXIST ;
 unsigned int KEVENT_FLAG_KERNEL ;
 unsigned int KEVENT_FLAG_WORKLOOP ;
 unsigned int KEVENT_FLAG_WORKQ ;
 int KQUEUE_MIGHT_BE_LAST_REF ;
 int KQ_DYNAMIC ;
 int assert (int) ;
 int current_thread () ;
 int fp_drop (struct proc*,int,struct fileproc*,int ) ;
 int fp_getfkq (struct proc*,int,struct fileproc**,struct kqueue**) ;
 int is_workqueue_thread (int ) ;
 struct kqueue* kevent_get_bound_kqworkloop (int ) ;
 int kevent_set_kq_mode (struct kqueue*,unsigned int) ;
 int knhash_lock (struct proc*) ;
 int knhash_unlock (struct proc*) ;
 int kqhash_lock (struct proc*) ;
 int kqhash_unlock (struct proc*) ;
 struct kqueue* kqueue_alloc (struct proc*,unsigned int) ;
 int kqueue_dealloc (struct kqueue*) ;
 int kqueue_hash_init_if_needed (struct proc*) ;
 int kqueue_hash_insert (struct proc*,scalar_t__,struct kqueue*) ;
 struct kqueue* kqueue_hash_lookup (struct proc*,scalar_t__) ;
 int kqueue_release (struct kqueue*,int ) ;
 int kqueue_retain (struct kqueue*) ;

__attribute__((used)) static int
kevent_get_kq(struct proc *p, kqueue_id_t id, workq_threadreq_param_t *trp,
  unsigned int flags, struct fileproc **fpp, int *fdp,
  struct kqueue **kqp)
{
 struct filedesc *descp = p->p_fd;
 struct fileproc *fp = ((void*)0);
 struct kqueue *kq = ((void*)0);
 int fd = 0;
 int error = 0;
 thread_t th = current_thread();

 assert(!trp || (flags & KEVENT_FLAG_WORKLOOP));


 if (flags & KEVENT_FLAG_DYNAMIC_KQUEUE) {
  assert(flags & KEVENT_FLAG_WORKLOOP);
  assert(!trp || (flags & KEVENT_FLAG_DYNAMIC_KQ_MUST_NOT_EXIST));
  kq = kevent_get_bound_kqworkloop(th);






  if (id == (kqueue_id_t)-1 &&
      (flags & KEVENT_FLAG_KERNEL) &&
      (flags & KEVENT_FLAG_WORKLOOP)) {

   if (!is_workqueue_thread(th) || !kq) {
    return EINVAL;
   }

   kqueue_retain(kq);
   goto out;
  }

  if (id == 0 || id == (kqueue_id_t)-1) {
   return EINVAL;
  }


  if (kq != ((void*)0) && ((struct kqworkloop *)kq)->kqwl_dynamicid == id) {

   if (flags & KEVENT_FLAG_DYNAMIC_KQ_MUST_NOT_EXIST) {
    return EEXIST;
   }


   assert(kq->kq_state & KQ_DYNAMIC);
   kqueue_retain(kq);
   goto out;
  }


  kqhash_lock(p);
  kq = kqueue_hash_lookup(p, id);
  if (kq == ((void*)0)) {
   kqhash_unlock(p);

   if (flags & KEVENT_FLAG_DYNAMIC_KQ_MUST_EXIST) {
    return ENOENT;
   }

   struct kqueue *alloc_kq;
   alloc_kq = kqueue_alloc(p, flags);
   if (!alloc_kq) {
    return ENOMEM;
   }

   kqhash_lock(p);
   kqueue_hash_init_if_needed(p);
   kq = kqueue_hash_lookup(p, id);
   if (kq == ((void*)0)) {

    kq = alloc_kq;
    if (trp) {
     struct kqworkloop *kqwl = (struct kqworkloop *)kq;
     kqwl->kqwl_params = trp->trp_value;
    }
    kqueue_hash_insert(p, id, kq);
    kqhash_unlock(p);
   } else if (flags & KEVENT_FLAG_DYNAMIC_KQ_MUST_NOT_EXIST) {

    kqhash_unlock(p);
    kqueue_release(alloc_kq, KQUEUE_MIGHT_BE_LAST_REF);
    kqueue_dealloc(alloc_kq);
    return EEXIST;
   } else {

    kqueue_retain(kq);
    kqhash_unlock(p);
    kqueue_release(alloc_kq, KQUEUE_MIGHT_BE_LAST_REF);
    kqueue_dealloc(alloc_kq);
   }
  } else {

   if (flags & KEVENT_FLAG_DYNAMIC_KQ_MUST_NOT_EXIST) {
    kqhash_unlock(p);
    return EEXIST;
   }


   assert(kq->kq_state & KQ_DYNAMIC);
   kqueue_retain(kq);
   kqhash_unlock(p);
  }

 } else if (flags & KEVENT_FLAG_WORKQ) {

  if (flags & KEVENT_FLAG_KERNEL) {
   assert(descp->fd_wqkqueue != ((void*)0));
  }







  kq = descp->fd_wqkqueue;
  if (kq == ((void*)0)) {
   struct kqueue *alloc_kq = kqueue_alloc(p, KEVENT_FLAG_WORKQ);
   if (alloc_kq == ((void*)0)) {
    return ENOMEM;
   }

   knhash_lock(p);
   if (descp->fd_wqkqueue == ((void*)0)) {
    kq = descp->fd_wqkqueue = alloc_kq;
    knhash_unlock(p);
   } else {
    knhash_unlock(p);
    kq = descp->fd_wqkqueue;
    kqueue_dealloc(alloc_kq);
   }
  }
 } else {

  fd = (int)id;
  if ((error = fp_getfkq(p, fd, &fp, &kq)) != 0)
   return (error);
 }
 if ((error = kevent_set_kq_mode(kq, flags)) != 0) {

  if (fp != ((void*)0))
   fp_drop(p, fd, fp, 0);
  return error;
 }

out:
 *fpp = fp;
 *fdp = fd;
 *kqp = kq;

 return error;
}
