
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct TYPE_2__ {struct mbuf* sb_mb; } ;
struct socket {TYPE_1__ so_rcv; } ;
struct mbuf {scalar_t__ m_type; struct mbuf* m_nextpkt; } ;
typedef int kern_ctl_ref ;
typedef int errno_t ;


 int EINVAL ;
 scalar_t__ MT_DATA ;
 scalar_t__ MT_HEADER ;
 scalar_t__ MT_OOBDATA ;
 struct socket* kcb_find_socket (int ,scalar_t__,int *) ;
 int socket_unlock (struct socket*,int) ;

errno_t
ctl_getenqueuepacketcount(kern_ctl_ref kctlref, u_int32_t unit, u_int32_t *pcnt)
{
 struct socket *so;
 u_int32_t cnt;
 struct mbuf *m1;

 if (pcnt == ((void*)0))
  return (EINVAL);

 so = kcb_find_socket(kctlref, unit, ((void*)0));
 if (so == ((void*)0)) {
  return (EINVAL);
 }

 cnt = 0;
 m1 = so->so_rcv.sb_mb;
 while (m1 != ((void*)0)) {
  if (m1->m_type == MT_DATA ||
      m1->m_type == MT_HEADER ||
      m1->m_type == MT_OOBDATA)
   cnt += 1;
  m1 = m1->m_nextpkt;
 }
 *pcnt = cnt;

 socket_unlock(so, 1);

 return (0);
}
