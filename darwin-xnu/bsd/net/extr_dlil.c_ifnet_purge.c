
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_eflags; } ;


 int IFEF_TXSTART ;
 int if_qflush (struct ifnet*,int ) ;

void
ifnet_purge(struct ifnet *ifp)
{
 if (ifp != ((void*)0) && (ifp->if_eflags & IFEF_TXSTART))
  if_qflush(ifp, 0);
}
