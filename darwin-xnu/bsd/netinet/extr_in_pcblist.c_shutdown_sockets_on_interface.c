
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int PROC_ALLPROCLIST ;
 int proc_iterate (int ,int ,struct ifnet*,int *,int *) ;
 int shutdown_sockets_on_interface_proc_callout ;

void
shutdown_sockets_on_interface(struct ifnet *ifp)
{
 proc_iterate(PROC_ALLPROCLIST,
  shutdown_sockets_on_interface_proc_callout,
  ifp, ((void*)0), ((void*)0));
}
