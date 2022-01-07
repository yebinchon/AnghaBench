
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_long ;
struct kqlist {int dummy; } ;
struct filedesc {int fd_kqhashmask; struct kqlist* fd_kqhash; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_6__ {struct filedesc* p_fd; } ;


 int CONFIG_KQ_HASHSIZE ;
 int FREE (struct kqlist*,int ) ;
 int M_KQUEUE ;
 scalar_t__ __improbable (int ) ;
 struct kqlist* hashinit (int ,int ,int *) ;
 int kqhash_lock (TYPE_1__*) ;
 int kqhash_lock_held (TYPE_1__*) ;
 int kqhash_unlock (TYPE_1__*) ;

__attribute__((used)) static void
kqueue_hash_init_if_needed(proc_t p)
{
 struct filedesc *fdp = p->p_fd;

 kqhash_lock_held(p);

 if (__improbable(fdp->fd_kqhash == ((void*)0))) {
  struct kqlist *alloc_hash;
  u_long alloc_mask;

  kqhash_unlock(p);
  alloc_hash = hashinit(CONFIG_KQ_HASHSIZE, M_KQUEUE, &alloc_mask);
  kqhash_lock(p);


  if (fdp->fd_kqhashmask == 0) {
   fdp->fd_kqhash = alloc_hash;
   fdp->fd_kqhashmask = alloc_mask;
  } else {
   kqhash_unlock(p);
   FREE(alloc_hash, M_KQUEUE);
   kqhash_lock(p);
  }
 }
}
