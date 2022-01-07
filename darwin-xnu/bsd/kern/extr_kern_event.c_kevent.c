
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct kevent_args {int timeout; int nevents; int eventlist; int nchanges; int changelist; scalar_t__ fd; } ;
typedef int kqueue_id_t ;
typedef int int32_t ;


 unsigned int KEVENT_FLAG_LEGACY32 ;
 int kevent_continue ;
 int kevent_internal (struct proc*,int ,int *,int ,int ,int ,int ,unsigned long long,unsigned long long,unsigned int,int ,int ,int *) ;

int
kevent(struct proc *p, struct kevent_args *uap, int32_t *retval)
{
 unsigned int flags = KEVENT_FLAG_LEGACY32;

 return kevent_internal(p,
                        (kqueue_id_t)uap->fd, ((void*)0),
                        uap->changelist, uap->nchanges,
                        uap->eventlist, uap->nevents,
                        0ULL, 0ULL,
                        flags,
                        uap->timeout,
                        kevent_continue,
                        retval);
}
