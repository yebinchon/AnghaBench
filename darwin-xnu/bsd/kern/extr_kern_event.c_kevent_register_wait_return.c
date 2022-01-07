
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqueue {int kq_p; } ;
struct kevent_internal_s {int flags; scalar_t__ data; } ;
struct _kevent_register {scalar_t__ eventout; scalar_t__* retval; int fp; int fd; int flags; int ueventlist; scalar_t__ handoff_thread; struct kevent_internal_s kev; struct kqueue* kq; } ;
typedef int proc_t ;


 int EV_ERROR ;
 int EV_RECEIPT ;
 int kevent_copyout (struct kevent_internal_s*,int *,int ,int ) ;
 int kevent_put_kq (int ,int ,int ,struct kqueue*) ;
 int thread_deallocate (scalar_t__) ;
 int unix_syscall_return (int) ;

__attribute__((used)) static void
kevent_register_wait_return(struct _kevent_register *cont_args)
{
 struct kqueue *kq = cont_args->kq;
 proc_t p = kq->kq_p;
 struct kevent_internal_s *kev = &cont_args->kev;
 int error = 0;

 if (cont_args->handoff_thread) {
  thread_deallocate(cont_args->handoff_thread);
 }

 if (kev->flags & (EV_ERROR|EV_RECEIPT)) {
  if ((kev->flags & EV_ERROR) == 0) {
   kev->flags |= EV_ERROR;
   kev->data = 0;
  }
  error = kevent_copyout(kev, &cont_args->ueventlist, p, cont_args->flags);
  if (error == 0) cont_args->eventout++;
 }

 kevent_put_kq(p, cont_args->fd, cont_args->fp, kq);
 if (error == 0) {
  *cont_args->retval = cont_args->eventout;
 }
 unix_syscall_return(error);
}
