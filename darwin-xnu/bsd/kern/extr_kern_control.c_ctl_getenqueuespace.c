
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct socket {int so_rcv; } ;
typedef int kern_ctl_ref ;
typedef int errno_t ;


 int EINVAL ;
 struct socket* kcb_find_socket (int ,int ,int *) ;
 long sbspace (int *) ;
 int socket_unlock (struct socket*,int) ;

errno_t
ctl_getenqueuespace(kern_ctl_ref kctlref, u_int32_t unit, size_t *space)
{
 struct socket *so;
 long avail;

 if (space == ((void*)0))
  return (EINVAL);

 so = kcb_find_socket(kctlref, unit, ((void*)0));
 if (so == ((void*)0)) {
  return (EINVAL);
 }

 avail = sbspace(&so->so_rcv);
 *space = (avail < 0) ? 0 : avail;
 socket_unlock(so, 1);

 return (0);
}
