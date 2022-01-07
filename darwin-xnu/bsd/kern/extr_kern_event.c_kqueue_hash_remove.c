
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {struct filedesc* p_fd; } ;
struct kqworkloop {int kqwl_dynamicid; } ;
struct kqueue {int kq_state; } ;
struct kqlist {int dummy; } ;
struct filedesc {int fd_kqhashmask; struct kqlist* fd_kqhash; } ;


 int KQ_DYNAMIC ;
 size_t KQ_HASH (int ,int ) ;
 int KQ_WORKLOOP ;
 int SLIST_REMOVE (struct kqlist*,struct kqworkloop*,int ,int ) ;
 int assert (int) ;
 int kqhash_lock_held (struct proc*) ;
 int kqwl_hashlink ;
 int kqworkloop ;

__attribute__((used)) static void
kqueue_hash_remove(
 struct proc *p,
 struct kqueue *kq)
{
 struct kqworkloop *kqwl = (struct kqworkloop *)kq;
 struct filedesc *fdp = p->p_fd;
 struct kqlist *list;


 kqhash_lock_held(p);

 if ((kq->kq_state & KQ_DYNAMIC) == 0) {
  assert(kq->kq_state & KQ_DYNAMIC);
  return;
 }
 assert(kq->kq_state & KQ_WORKLOOP);
 list = &fdp->fd_kqhash[KQ_HASH(kqwl->kqwl_dynamicid, fdp->fd_kqhashmask)];
 SLIST_REMOVE(list, kqwl, kqworkloop, kqwl_hashlink);
}
