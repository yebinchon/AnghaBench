
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
typedef int * ifbond_ref ;


 int bond_lock () ;
 int bond_unlock () ;
 int ifbond_release (int *) ;
 int ifnet_release (struct ifnet*) ;
 scalar_t__ ifnet_softc (struct ifnet*) ;

__attribute__((used)) static void
bond_if_free(struct ifnet * ifp)
{
    ifbond_ref ifb;

    if (ifp == ((void*)0)) {
 return;
    }
    bond_lock();
    ifb = (ifbond_ref)ifnet_softc(ifp);
    if (ifb == ((void*)0)) {
 bond_unlock();
 return;
    }
    ifbond_release(ifb);
    bond_unlock();
    ifnet_release(ifp);
    return;
}
