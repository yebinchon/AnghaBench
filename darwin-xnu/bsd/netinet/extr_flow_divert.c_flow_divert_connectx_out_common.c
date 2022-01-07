
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ user_ssize_t ;
typedef int uio_t ;
struct uio {int dummy; } ;
struct socket {TYPE_2__* so_proto; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct inpcb {int dummy; } ;
typedef int sae_connid_t ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_sosend ) (struct socket*,int *,int ,int *,int *,int ) ;} ;


 int EINPROGRESS ;
 int EINVAL ;
 int EWOULDBLOCK ;
 int VERIFY (int ) ;
 int flow_divert_connect_out (struct socket*,struct sockaddr*,struct proc*) ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 int stub1 (struct socket*,int *,int ,int *,int *,int ) ;
 scalar_t__ uio_resid (struct uio*) ;

__attribute__((used)) static int
flow_divert_connectx_out_common(struct socket *so, struct sockaddr *dst,
    struct proc *p, sae_connid_t *pcid, struct uio *auio, user_ssize_t *bytes_written)
{
 struct inpcb *inp = sotoinpcb(so);
 int error;

 if (inp == ((void*)0)) {
  return (EINVAL);
 }

 VERIFY(dst != ((void*)0));

 error = flow_divert_connect_out(so, dst, p);

 if (error != 0) {
  return error;
 }


 if (auio != ((void*)0)) {
  user_ssize_t datalen = 0;

  socket_unlock(so, 0);

  VERIFY(bytes_written != ((void*)0));

  datalen = uio_resid(auio);
  error = so->so_proto->pr_usrreqs->pru_sosend(so, ((void*)0), (uio_t)auio, ((void*)0), ((void*)0), 0);
  socket_lock(so, 0);

  if (error == 0 || error == EWOULDBLOCK) {
   *bytes_written = datalen - uio_resid(auio);
  }
  if (error == EWOULDBLOCK) {
   error = EINPROGRESS;
  }
 }

 if (error == 0 && pcid != ((void*)0)) {
  *pcid = 1;
 }

 return (error);
}
