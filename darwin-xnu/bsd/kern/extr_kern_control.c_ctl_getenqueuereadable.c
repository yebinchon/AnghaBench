
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct TYPE_2__ {scalar_t__ sb_cc; scalar_t__ sb_lowat; } ;
struct socket {TYPE_1__ so_rcv; } ;
typedef int kern_ctl_ref ;
typedef int errno_t ;


 int EINVAL ;
 struct socket* kcb_find_socket (int ,scalar_t__,int *) ;
 int socket_unlock (struct socket*,int) ;

errno_t
ctl_getenqueuereadable(kern_ctl_ref kctlref, u_int32_t unit,
    u_int32_t *difference)
{
 struct socket *so;

 if (difference == ((void*)0))
  return (EINVAL);

 so = kcb_find_socket(kctlref, unit, ((void*)0));
 if (so == ((void*)0)) {
  return (EINVAL);
 }

 if (so->so_rcv.sb_cc >= so->so_rcv.sb_lowat) {
  *difference = 0;
 } else {
  *difference = (so->so_rcv.sb_lowat - so->so_rcv.sb_cc);
 }
 socket_unlock(so, 1);

 return (0);
}
