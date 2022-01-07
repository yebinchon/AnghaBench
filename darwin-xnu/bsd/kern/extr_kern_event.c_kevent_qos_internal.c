
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_size_t ;
typedef int user_addr_t ;
typedef int uint64_t ;
struct proc {int dummy; } ;
typedef int kqueue_id_t ;
typedef int int32_t ;


 unsigned int KEVENT_FLAG_KERNEL ;
 int kevent_internal (struct proc*,int ,int *,int ,int,int ,int,int ,int ,unsigned int,unsigned long long,int *,int *) ;

int
kevent_qos_internal(struct proc *p, int fd,
      user_addr_t changelist, int nchanges,
      user_addr_t eventlist, int nevents,
      user_addr_t data_out, user_size_t *data_available,
      unsigned int flags,
      int32_t *retval)
{
 return kevent_internal(p,
                        (kqueue_id_t)fd, ((void*)0),
                        changelist, nchanges,
                        eventlist, nevents,
                        data_out, (uint64_t)data_available,
                        (flags | KEVENT_FLAG_KERNEL),
                        0ULL,
                        ((void*)0),
                        retval);
}
