
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct proc {int dummy; } ;
struct kevent_id_args {int flags; scalar_t__ data_available; int data_out; int nevents; int eventlist; int nchanges; int changelist; scalar_t__ id; } ;
typedef int kqueue_id_t ;
typedef int int32_t ;


 int KEVENT_FLAG_DYNAMIC_KQUEUE ;
 int KEVENT_FLAG_USER ;
 int kevent_continue ;
 int kevent_internal (struct proc*,int ,int *,int ,int ,int ,int ,int ,int ,int,unsigned long long,int ,int *) ;

int
kevent_id(struct proc *p, struct kevent_id_args *uap, int32_t *retval)
{

 uap->flags &= KEVENT_FLAG_USER;

 return kevent_internal(p,
                        (kqueue_id_t)uap->id, ((void*)0),
                        uap->changelist, uap->nchanges,
                        uap->eventlist, uap->nevents,
                        uap->data_out, (uint64_t)uap->data_available,
                        (uap->flags | KEVENT_FLAG_DYNAMIC_KQUEUE),
                        0ULL,
                        kevent_continue,
                        retval);
}
