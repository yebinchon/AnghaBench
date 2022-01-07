
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
typedef int * ifbond_ref ;


 scalar_t__ IFT_IEEE8023ADLAG ;
 int bond_if_detach (struct ifnet*) ;
 int bond_lock () ;
 int bond_remove (int *) ;
 int bond_unlock () ;
 scalar_t__ ifbond_flags_if_detaching (int *) ;
 int * ifnet_softc (struct ifnet*) ;
 scalar_t__ ifnet_type (struct ifnet*) ;

__attribute__((used)) static int
bond_clone_destroy(struct ifnet * ifp)
{
    ifbond_ref ifb;

    bond_lock();
    ifb = ifnet_softc(ifp);
    if (ifb == ((void*)0) || ifnet_type(ifp) != IFT_IEEE8023ADLAG) {
 bond_unlock();
 return 0;
    }
    if (ifbond_flags_if_detaching(ifb)) {
 bond_unlock();
 return 0;
    }
    bond_remove(ifb);
    bond_unlock();
    bond_if_detach(ifp);
    return 0;
}
