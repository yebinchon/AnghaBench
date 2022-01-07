
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* ifnet_t ;
typedef int * if_fake_ref ;
struct TYPE_5__ {int * if_softc; } ;


 int feth_lock () ;
 int feth_release (int *) ;
 int feth_unlock () ;
 int * ifnet_get_if_fake (TYPE_1__*) ;
 int ifnet_release (TYPE_1__*) ;

__attribute__((used)) static void
feth_if_free(ifnet_t ifp)
{
 if_fake_ref fakeif;

 if (ifp == ((void*)0)) {
  return;
 }
 feth_lock();
 fakeif = ifnet_get_if_fake(ifp);
 if (fakeif == ((void*)0)) {
  feth_unlock();
  return;
 }
 ifp->if_softc = ((void*)0);
 feth_unlock();
 feth_release(fakeif);
 ifnet_release(ifp);
 return;
}
