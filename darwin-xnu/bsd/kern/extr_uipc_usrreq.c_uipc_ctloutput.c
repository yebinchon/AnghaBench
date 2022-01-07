
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unpcb {int unp_flags; TYPE_1__* unp_conn; int unp_peercred; } ;
struct sockopt {int sopt_dir; int const sopt_name; } ;
struct socket {int so_flags; int last_uuid; int e_uuid; int last_pid; int e_pid; int so_type; } ;
typedef int pid_t ;
typedef int peerpid ;
struct TYPE_2__ {struct socket* unp_socket; } ;


 int EINVAL ;
 int ENOTCONN ;
 int EOPNOTSUPP ;





 int SOCK_STREAM ;
 int SOF_DELEGATED ;


 int UNP_HAVEPC ;
 int panic (char*) ;
 int socket_unlock (struct socket*,int) ;
 int sooptcopyout (struct sockopt*,int *,int) ;
 struct unpcb* sotounpcb (struct socket*) ;
 int unp_get_locks_in_order (struct socket*,struct socket*) ;

int
uipc_ctloutput(struct socket *so, struct sockopt *sopt)
{
 struct unpcb *unp = sotounpcb(so);
 int error = 0;
 pid_t peerpid;
 struct socket *peerso;

 switch (sopt->sopt_dir) {
 case 129:
  switch (sopt->sopt_name) {
  case 134:
   if (unp->unp_flags & UNP_HAVEPC) {
    error = sooptcopyout(sopt, &unp->unp_peercred,
        sizeof (unp->unp_peercred));
   } else {
    if (so->so_type == SOCK_STREAM)
     error = ENOTCONN;
    else
     error = EINVAL;
   }
   break;
  case 131:
  case 133:
   if (unp->unp_conn == ((void*)0)) {
    error = ENOTCONN;
    break;
   }
   peerso = unp->unp_conn->unp_socket;
   if (peerso == ((void*)0))
    panic("peer is connected but has no socket?");
   unp_get_locks_in_order(so, peerso);
   if (sopt->sopt_name == 133 &&
       peerso->so_flags & SOF_DELEGATED)
    peerpid = peerso->e_pid;
   else
    peerpid = peerso->last_pid;
   socket_unlock(peerso, 1);
   error = sooptcopyout(sopt, &peerpid, sizeof (peerpid));
   break;
  case 130:
  case 132:
   if (unp->unp_conn == ((void*)0)) {
    error = ENOTCONN;
    break;
   }
   peerso = unp->unp_conn->unp_socket;
   if (peerso == ((void*)0))
    panic("peer is connected but has no socket?");
   unp_get_locks_in_order(so, peerso);
   if (sopt->sopt_name == 132 &&
       peerso->so_flags & SOF_DELEGATED)
    error = sooptcopyout(sopt, &peerso->e_uuid,
        sizeof (peerso->e_uuid));
   else
    error = sooptcopyout(sopt, &peerso->last_uuid,
        sizeof (peerso->last_uuid));
   socket_unlock(peerso, 1);
   break;
  default:
   error = EOPNOTSUPP;
   break;
  }
  break;
 case 128:
 default:
  error = EOPNOTSUPP;
  break;
 }

 return (error);
}
