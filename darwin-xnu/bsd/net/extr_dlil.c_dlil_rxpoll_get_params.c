
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet_poll_params {int interval_time; int bytes_hiwat; int bytes_lowat; int packets_hiwat; int packets_lowat; int packets_limit; } ;
struct ifnet {int if_eflags; struct dlil_threading_info* if_inp; } ;
struct dlil_threading_info {int input_lck; int rxpoll_ival; int rxpoll_bhiwat; int rxpoll_blowat; int rxpoll_phiwat; int rxpoll_plowat; int rxpoll_plim; } ;
typedef int errno_t ;


 int ENXIO ;
 int IFEF_RXPOLL ;
 int VERIFY (int) ;
 int bzero (struct ifnet_poll_params*,int) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

errno_t
dlil_rxpoll_get_params(struct ifnet *ifp, struct ifnet_poll_params *p)
{
 struct dlil_threading_info *inp;

 VERIFY(ifp != ((void*)0) && p != ((void*)0));
 if (!(ifp->if_eflags & IFEF_RXPOLL) || (inp = ifp->if_inp) == ((void*)0))
  return (ENXIO);

 bzero(p, sizeof (*p));

 lck_mtx_lock(&inp->input_lck);
 p->packets_limit = inp->rxpoll_plim;
 p->packets_lowat = inp->rxpoll_plowat;
 p->packets_hiwat = inp->rxpoll_phiwat;
 p->bytes_lowat = inp->rxpoll_blowat;
 p->bytes_hiwat = inp->rxpoll_bhiwat;
 p->interval_time = inp->rxpoll_ival;
 lck_mtx_unlock(&inp->input_lck);

 return (0);
}
