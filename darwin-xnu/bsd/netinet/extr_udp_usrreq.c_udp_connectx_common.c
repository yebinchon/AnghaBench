
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ user_ssize_t ;
typedef int uio_t ;
typedef int uint32_t ;
struct uio {int dummy; } ;
struct socket {TYPE_2__* so_proto; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct inpcb {int inp_flags2; } ;
typedef int sae_connid_t ;
typedef int sae_associd_t ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_sosend ) (struct socket*,int *,int ,int *,int *,int ) ;int (* pru_disconnectx ) (struct socket*,int ,int ) ;} ;




 int ASSERT (int) ;
 int EINVAL ;
 int EWOULDBLOCK ;
 int IFSCOPE_NONE ;
 int INP2_CONNECT_IN_PROGRESS ;
 int SAE_ASSOCID_ANY ;
 int SAE_CONNID_ANY ;
 int VERIFY (int ) ;
 int inp_bindif (struct inpcb*,int ,int *) ;
 int inp_update_necp_policy (struct inpcb*,struct sockaddr*,struct sockaddr*,int ) ;
 int sobindlock (struct socket*,struct sockaddr*,int ) ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 int stub1 (struct socket*,int *,int ,int *,int *,int ) ;
 int stub2 (struct socket*,int ,int ) ;
 int udp6_connect (struct socket*,struct sockaddr*,struct proc*) ;
 int udp_connect (struct socket*,struct sockaddr*,struct proc*) ;
 scalar_t__ uio_resid (struct uio*) ;

int
udp_connectx_common(struct socket *so, int af, struct sockaddr *src, struct sockaddr *dst,
    struct proc *p, uint32_t ifscope, sae_associd_t aid, sae_connid_t *pcid,
    uint32_t flags, void *arg, uint32_t arglen,
    struct uio *uio, user_ssize_t *bytes_written)
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
  error = udp_connect(so, dst, p);
  break;





 default:
  VERIFY(0);

 }

 if (error != 0) {
  goto done;
 }





 if (uio != ((void*)0)) {
  socket_unlock(so, 0);

  VERIFY(bytes_written != ((void*)0));

  datalen = uio_resid(uio);
  error = so->so_proto->pr_usrreqs->pru_sosend(so, ((void*)0),
      (uio_t)uio, ((void*)0), ((void*)0), 0);
  socket_lock(so, 0);


  if (error == 0 || error == EWOULDBLOCK)
   *bytes_written = datalen - uio_resid(uio);
  else
   (void) so->so_proto->pr_usrreqs->pru_disconnectx(so,
       SAE_ASSOCID_ANY, SAE_CONNID_ANY);




  if (error == EWOULDBLOCK)
   error = 0;
 }

 if (error == 0 && pcid != ((void*)0))
  *pcid = 1;

done:
 inp->inp_flags2 &= ~INP2_CONNECT_IN_PROGRESS;
 return (error);
}
