
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct kqueue {int dummy; } ;
struct knote {int dummy; } ;
struct kevent_internal_s {int dummy; } ;


 int knhash_lock (struct proc*) ;
 int knhash_unlock (struct proc*) ;
 struct knote* knote_fdfind (struct kqueue*,struct kevent_internal_s*,int,struct proc*) ;
 int kqlock (struct kqueue*) ;
 int proc_fdlock (struct proc*) ;
 int proc_fdunlock (struct proc*) ;

__attribute__((used)) static struct knote *
kq_find_knote_and_kq_lock(struct kqueue *kq, struct kevent_internal_s *kev,
  bool is_fd, struct proc *p)
{
 struct knote * ret;

 if (is_fd)
  proc_fdlock(p);
 else
  knhash_lock(p);

 ret = knote_fdfind(kq, kev, is_fd, p);

 if (ret) {
  kqlock(kq);
 }

 if (is_fd)
  proc_fdunlock(p);
 else
  knhash_unlock(p);

 return ret;
}
