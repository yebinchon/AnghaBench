
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int so_state; struct protosw* so_proto; } ;
struct protosw {TYPE_1__* pr_usrreqs; } ;
struct TYPE_2__ {int (* pru_shutdown ) (struct socket*) ;} ;


 int DBG_FNC_SOSHUTDOWN ;
 int ENOTCONN ;
 int EV_RCLOSED ;
 int EV_WCLOSED ;
 int KERNEL_DEBUG (int ,int,int,int ,int ,int ) ;
 int SHUT_RD ;
 int SHUT_WR ;
 int SS_CANTRCVMORE ;
 int SS_CANTSENDMORE ;
 int postevent (struct socket*,int ,int ) ;
 int sflt_notify (struct socket*,int ,int*) ;
 int sock_evt_shutdown ;
 int sorflush (struct socket*) ;
 int stub1 (struct socket*) ;

int
soshutdownlock_final(struct socket *so, int how)
{
 struct protosw *pr = so->so_proto;
 int error = 0;

 sflt_notify(so, sock_evt_shutdown, &how);

 if (how != SHUT_WR) {
  if ((so->so_state & SS_CANTRCVMORE) != 0) {

   error = ENOTCONN;
   goto done;
  }
  sorflush(so);
  postevent(so, 0, EV_RCLOSED);
 }
 if (how != SHUT_RD) {
  if ((so->so_state & SS_CANTSENDMORE) != 0) {

   error = ENOTCONN;
   goto done;
  }
  error = (*pr->pr_usrreqs->pru_shutdown)(so);
  postevent(so, 0, EV_WCLOSED);
 }
done:
 KERNEL_DEBUG(DBG_FNC_SOSHUTDOWN, how, 1, 0, 0, 0);
 return (error);
}
