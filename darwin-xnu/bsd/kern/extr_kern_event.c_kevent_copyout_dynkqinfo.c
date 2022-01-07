
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int uint32_t ;
struct kqueue_info {int dummy; } ;
struct kqueue_dyninfo {int kqdi_info; } ;
struct kqueue {int dummy; } ;
typedef int * proc_t ;
typedef int kqueue_id_t ;
typedef int int32_t ;


 int ENOBUFS ;
 int ESRCH ;
 int assert (int ) ;
 int copyout (struct kqueue_dyninfo*,int ,int) ;
 int fill_kqueue_dyninfo (struct kqueue*,struct kqueue_dyninfo*) ;
 int fill_kqueueinfo (struct kqueue*,int *) ;
 int kqhash_lock (int *) ;
 int kqhash_unlock (int *) ;
 struct kqueue* kqueue_hash_lookup (int *,int ) ;
 int kqueue_release_last (int *,struct kqueue*) ;
 int kqueue_retain (struct kqueue*) ;

int
kevent_copyout_dynkqinfo(void *proc, kqueue_id_t kq_id, user_addr_t ubuf,
  uint32_t ubufsize, int32_t *size_out)
{
 proc_t p = (proc_t)proc;
 struct kqueue *kq;
 int err = 0;
 struct kqueue_dyninfo kqdi = { };

 assert(p != ((void*)0));

 if (ubufsize < sizeof(struct kqueue_info)) {
  return ENOBUFS;
 }

 kqhash_lock(p);
 kq = kqueue_hash_lookup(p, kq_id);
 if (!kq) {
  kqhash_unlock(p);
  return ESRCH;
 }
 kqueue_retain(kq);
 kqhash_unlock(p);





 if (ubufsize >= sizeof(struct kqueue_dyninfo)) {
  ubufsize = sizeof(struct kqueue_dyninfo);
  err = fill_kqueue_dyninfo(kq, &kqdi);
 } else {
  ubufsize = sizeof(struct kqueue_info);
  err = fill_kqueueinfo(kq, &kqdi.kqdi_info);
 }
 if (err == 0 && (err = copyout(&kqdi, ubuf, ubufsize)) == 0) {
  *size_out = ubufsize;
 }
 kqueue_release_last(p, kq);
 return err;
}
