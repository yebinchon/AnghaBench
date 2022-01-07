
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ifnet {int if_eflags; } ;
typedef int errno_t ;


 int EINVAL ;
 int IFEF_PROBE_CONNECTIVITY ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_exclusive (struct ifnet*) ;
 int necp_update_all_clients () ;
 int tcp_probe_connectivity (struct ifnet*,int) ;

errno_t
if_probe_connectivity(struct ifnet *ifp, u_int32_t conn_probe)
{
 ifnet_lock_exclusive(ifp);
 if (conn_probe > 1) {
  ifnet_lock_done(ifp);
  return (EINVAL);
 }
 if (conn_probe == 0)
  ifp->if_eflags &= ~IFEF_PROBE_CONNECTIVITY;
 else
  ifp->if_eflags |= IFEF_PROBE_CONNECTIVITY;
 ifnet_lock_done(ifp);





 tcp_probe_connectivity(ifp, conn_probe);
 return (0);
}
