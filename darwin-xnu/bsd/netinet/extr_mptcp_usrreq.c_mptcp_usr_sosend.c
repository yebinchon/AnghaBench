
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ user_ssize_t ;
struct uio {int dummy; } ;
struct socket {scalar_t__ so_type; int so_flags; int so_snd; TYPE_4__* so_proto; } ;
struct sockaddr {int dummy; } ;
struct proc {TYPE_2__* p_stats; } ;
struct mbuf {int dummy; } ;
typedef scalar_t__ int32_t ;
struct TYPE_8__ {TYPE_3__* pr_usrreqs; } ;
struct TYPE_7__ {int (* pru_send ) (struct socket*,int,struct mbuf*,int *,int *,struct proc*) ;} ;
struct TYPE_5__ {int ru_msgsnd; } ;
struct TYPE_6__ {TYPE_1__ p_ru; } ;


 int EINVAL ;
 int EJUSTRETURN ;
 int EOPNOTSUPP ;
 int FALSE ;
 int MSG_DONTROUTE ;
 int MSG_EOR ;
 int MSG_FLUSH ;
 int MSG_HOLD ;
 int MSG_OOB ;
 int MSG_SEND ;
 int M_WAITOK ;
 int OSIncrementAtomicLong (int *) ;
 int PRUS_MORETOCOME ;
 scalar_t__ SOCK_STREAM ;
 int SOF_ENABLE_MSGS ;
 int SOF_MP_SUBFLOW ;
 int VERIFY (int) ;
 struct proc* current_proc () ;
 int m_freem (struct mbuf*) ;
 int mptcp_uiotombuf (struct uio*,int ,scalar_t__,int ,struct mbuf**) ;
 scalar_t__ sbspace (int *) ;
 int sbunlock (int *,int ) ;
 int sflt_data_out (struct socket*,int *,struct mbuf**,struct mbuf**,int ) ;
 int so_update_last_owner_locked (struct socket*,struct proc*) ;
 int so_update_policy (struct socket*) ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;
 int soclearfastopen (struct socket*) ;
 int sosendcheck (struct socket*,int *,scalar_t__,int ,int ,int,int*,int *) ;
 int stub1 (struct socket*,int,struct mbuf*,int *,int *,struct proc*) ;
 scalar_t__ uio_resid (struct uio*) ;

__attribute__((used)) static int
mptcp_usr_sosend(struct socket *mp_so, struct sockaddr *addr, struct uio *uio,
    struct mbuf *top, struct mbuf *control, int flags)
{
#pragma unused(addr)
 int32_t space;
 user_ssize_t resid;
 int error, sendflags;
 struct proc *p = current_proc();
 int sblocked = 0;


 if (uio == ((void*)0) || top != ((void*)0)) {
  error = EINVAL;
  goto out;
 }
 resid = uio_resid(uio);

 socket_lock(mp_so, 1);
 so_update_last_owner_locked(mp_so, p);
 so_update_policy(mp_so);

 VERIFY(mp_so->so_type == SOCK_STREAM);
 VERIFY(!(mp_so->so_flags & SOF_MP_SUBFLOW));

 if ((flags & (MSG_OOB|MSG_DONTROUTE|MSG_HOLD|MSG_SEND|MSG_FLUSH)) ||
     (mp_so->so_flags & SOF_ENABLE_MSGS)) {
  error = EOPNOTSUPP;
  socket_unlock(mp_so, 1);
  goto out;
 }
 if (resid < 0 || (flags & MSG_EOR) || control != ((void*)0)) {
  error = EINVAL;
  socket_unlock(mp_so, 1);
  goto out;
 }

 OSIncrementAtomicLong(&p->p_stats->p_ru.ru_msgsnd);

 do {
  error = sosendcheck(mp_so, ((void*)0), resid, 0, 0, flags,
      &sblocked, ((void*)0));
  if (error != 0)
   goto release;

  space = sbspace(&mp_so->so_snd);
  do {
   socket_unlock(mp_so, 0);



   error = mptcp_uiotombuf(uio, M_WAITOK, space, 0, &top);
   if (error != 0) {
    socket_lock(mp_so, 0);
    goto release;
   }
   VERIFY(top != ((void*)0));
   space -= resid - uio_resid(uio);
   resid = uio_resid(uio);
   socket_lock(mp_so, 0);




   sendflags = (resid > 0 && space > 0) ?
       PRUS_MORETOCOME : 0;




   VERIFY(control == ((void*)0));
   error = sflt_data_out(mp_so, ((void*)0), &top, &control, 0);
   if (error != 0) {
    if (error == EJUSTRETURN) {
     error = 0;
     top = ((void*)0);

    }
    goto release;
   }
   if (control != ((void*)0)) {
    m_freem(control);
    control = ((void*)0);
   }




   error = (*mp_so->so_proto->pr_usrreqs->pru_send)
       (mp_so, sendflags, top, ((void*)0), ((void*)0), p);

   top = ((void*)0);
   if (error != 0)
    goto release;
  } while (resid != 0 && space > 0);
 } while (resid != 0);

release:
 if (sblocked)
  sbunlock(&mp_so->so_snd, FALSE);
 else
  socket_unlock(mp_so, 1);
out:
 if (top != ((void*)0))
  m_freem(top);
 if (control != ((void*)0))
  m_freem(control);

 soclearfastopen(mp_so);

 return (error);
}
