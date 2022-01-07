
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int * if_softc; } ;


 int if_clone_softc_deallocate (int *,int *) ;
 int ifnet_release (struct ifnet*) ;
 int pflog_cloner ;

__attribute__((used)) static void
pflogfree(struct ifnet *ifp)
{
 if_clone_softc_deallocate(&pflog_cloner, ifp->if_softc);
 ifp->if_softc = ((void*)0);
 (void) ifnet_release(ifp);
}
