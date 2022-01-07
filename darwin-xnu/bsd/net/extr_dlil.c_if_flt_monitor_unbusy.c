
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int if_flt_monitor_leave (struct ifnet*) ;

__attribute__((used)) static void
if_flt_monitor_unbusy(struct ifnet *ifp)
{
 if_flt_monitor_leave(ifp);
}
