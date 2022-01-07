
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ user_ssize_t ;
typedef int uio_t ;
typedef int uint32_t ;
struct uio {int dummy; } ;
struct socket {int so_flags1; TYPE_2__* so_proto; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct inpcb {int inp_flags2; } ;
typedef int sae_connid_t ;
typedef int sae_associd_t ;
struct TYPE_6__ {int t_flagsext; } ;
struct TYPE_5__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_4__ {int (* pru_sosend ) (struct socket*,int *,int ,int *,int *,int ) ;} ;




 int ASSERT (int) ;
 int EINPROGRESS ;
 int EINVAL ;
 int EWOULDBLOCK ;
 int IFSCOPE_NONE ;
 int INP2_CONNECT_IN_PROGRESS ;
 int SOF1_DATA_IDEMPOTENT ;
 int SOF1_PRECONNECT_DATA ;
 int TCP_FASTOPEN_CLIENT ;
 int TF_FASTOPEN ;
 int VERIFY (int ) ;
 int inp_bindif (struct inpcb*,int ,int *) ;
 int inp_update_necp_policy (struct inpcb*,struct sockaddr*,struct sockaddr*,int ) ;
 int sobindlock (struct socket*,struct sockaddr*,int ) ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 TYPE_3__* sototcpcb (struct socket*) ;
 int stub1 (struct socket*,int *,int ,int *,int *,int ) ;
 int tcp6_usr_connect (struct socket*,struct sockaddr*,struct proc*) ;
 int tcp_fastopen ;
 int tcp_usr_connect (struct socket*,struct sockaddr*,struct proc*) ;
 scalar_t__ uio_resid (struct uio*) ;

__attribute__((used)) static int
tcp_usr_connectx_common(struct socket *so, int af,
    struct sockaddr *src, struct sockaddr *dst,
    struct proc *p, uint32_t ifscope, sae_associd_t aid, sae_connid_t *pcid,
    uint32_t flags, void *arg, uint32_t arglen, struct uio *auio,
    user_ssize_t *bytes_written)
{
#pragma unused(aid, flags, arg, arglen)
 struct inpcb *inp = sotoinpcb(so);
 int error = 0;
 user_ssize_t datalen = 0;

 if (inp == ((void*)0))
  return (EINVAL);

 VERIFY(dst != ((void*)0));

 ASSERT(!(inp->inp_flags2 & INP2_CONNECT_IN_PROGRESS));
 inp->inp_flags2 |= INP2_CONNECT_IN_PROGRESS;





 if ((so->so_flags1 & SOF1_DATA_IDEMPOTENT) &&
     (tcp_fastopen & TCP_FASTOPEN_CLIENT))
  sototcpcb(so)->t_flagsext |= TF_FASTOPEN;


 if (ifscope != IFSCOPE_NONE &&
  (error = inp_bindif(inp, ifscope, ((void*)0))) != 0) {
  goto done;
 }


 if (src != ((void*)0)) {
  error = sobindlock(so, src, 0);
  if (error != 0) {
   goto done;
  }
 }

 switch (af) {
 case 129:
  error = tcp_usr_connect(so, dst, p);
  break;





 default:
  VERIFY(0);

 }

 if (error != 0) {
  goto done;
 }


 if (auio != ((void*)0)) {
  socket_unlock(so, 0);

  VERIFY(bytes_written != ((void*)0));

  datalen = uio_resid(auio);
  error = so->so_proto->pr_usrreqs->pru_sosend(so, ((void*)0),
             (uio_t)auio, ((void*)0), ((void*)0), 0);
  socket_lock(so, 0);

  if (error == 0 || error == EWOULDBLOCK)
   *bytes_written = datalen - uio_resid(auio);
  if (error == EWOULDBLOCK)
   error = EINPROGRESS;
 }

 if (error == 0 && pcid != ((void*)0))
  *pcid = 1;

done:
 if (error && error != EINPROGRESS)
  so->so_flags1 &= ~SOF1_PRECONNECT_DATA;

 inp->inp_flags2 &= ~INP2_CONNECT_IN_PROGRESS;
 return (error);
}
