
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ifnet {int if_eflags; struct dlil_threading_info* if_inp; } ;
struct dlil_threading_info {int input_lck; int rcvq_pkts; } ;
typedef int errno_t ;


 int EINVAL ;
 int ENXIO ;
 int IFEF_RXPOLL ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int qlimit (int *) ;

errno_t
ifnet_get_rcvq_maxlen(struct ifnet *ifp, u_int32_t *maxqlen)
{
 struct dlil_threading_info *inp;

 if (ifp == ((void*)0) || maxqlen == ((void*)0))
  return (EINVAL);
 else if (!(ifp->if_eflags & IFEF_RXPOLL) || ifp->if_inp == ((void*)0))
  return (ENXIO);

 inp = ifp->if_inp;
 lck_mtx_lock(&inp->input_lck);
 *maxqlen = qlimit(&inp->rcvq_pkts);
 lck_mtx_unlock(&inp->input_lck);
 return (0);
}
