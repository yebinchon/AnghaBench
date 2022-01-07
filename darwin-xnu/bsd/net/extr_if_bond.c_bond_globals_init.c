
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
typedef int lacp_system_ref ;
typedef int ifname ;
typedef int * bond_globals_ref ;


 int ENOMEM ;
 int ENXIO ;
 int IFNAMSIZ ;
 scalar_t__ IF_LLADDR (struct ifnet*) ;
 int M_BOND ;
 int _FREE (int *,int ) ;
 int bond_assert_lock_not_held () ;
 int * bond_globals_create (int,int ) ;
 int bond_lock () ;
 int bond_unlock () ;
 int * g_bond ;
 struct ifnet* ifunit (char*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
bond_globals_init(void)
{
    bond_globals_ref b;
    int i;
    struct ifnet * ifp;

    bond_assert_lock_not_held();

    if (g_bond != ((void*)0)) {
 return (0);
    }





    ifp = ((void*)0);
    for (i = 0; i < 4; i++) {
 char ifname[IFNAMSIZ+1];
 snprintf(ifname, sizeof(ifname), "en%d", i);
 ifp = ifunit(ifname);
 if (ifp != ((void*)0)) {
     break;
 }
    }
    b = ((void*)0);
    if (ifp != ((void*)0)) {
 b = bond_globals_create(0x8000, (lacp_system_ref)IF_LLADDR(ifp));
    }
    bond_lock();
    if (g_bond != ((void*)0)) {
 bond_unlock();
 _FREE(b, M_BOND);
 return (0);
    }
    g_bond = b;
    bond_unlock();
    if (ifp == ((void*)0)) {
 return (ENXIO);
    }
    if (b == ((void*)0)) {
 return (ENOMEM);
    }
    return (0);
}
