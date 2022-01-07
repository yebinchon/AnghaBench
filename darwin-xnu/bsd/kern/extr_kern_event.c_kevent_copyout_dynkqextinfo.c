
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int uint32_t ;
struct kqueue {int dummy; } ;
typedef int * proc_t ;
typedef int kqueue_id_t ;
typedef int int32_t ;


 int ESRCH ;
 int assert (int ) ;
 int kqhash_lock (int *) ;
 int kqhash_unlock (int *) ;
 struct kqueue* kqueue_hash_lookup (int *,int ) ;
 int kqueue_release_last (int *,struct kqueue*) ;
 int kqueue_retain (struct kqueue*) ;
 int pid_kqueue_extinfo (int *,struct kqueue*,int ,int ,int *) ;

int
kevent_copyout_dynkqextinfo(void *proc, kqueue_id_t kq_id, user_addr_t ubuf,
  uint32_t ubufsize, int32_t *nknotes_out)
{
 proc_t p = (proc_t)proc;
 struct kqueue *kq;
 int err;

 assert(p != ((void*)0));

 kqhash_lock(p);
 kq = kqueue_hash_lookup(p, kq_id);
 if (!kq) {
  kqhash_unlock(p);
  return ESRCH;
 }
 kqueue_retain(kq);
 kqhash_unlock(p);

 err = pid_kqueue_extinfo(p, kq, ubuf, ubufsize, nknotes_out);
 kqueue_release_last(p, kq);
 return err;
}
