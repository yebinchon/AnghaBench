
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ifnet_t ;
typedef int * if_fake_ref ;


 int feth_config (int ,int *) ;
 scalar_t__ feth_is_detaching (int *) ;
 int feth_lock () ;
 int feth_set_detaching (int *) ;
 int feth_unlock () ;
 int ifnet_detach (int ) ;
 int * ifnet_get_if_fake (int ) ;

__attribute__((used)) static int
feth_clone_destroy(ifnet_t ifp)
{
 if_fake_ref fakeif;

 feth_lock();
 fakeif = ifnet_get_if_fake(ifp);
 if (fakeif == ((void*)0) || feth_is_detaching(fakeif)) {
  feth_unlock();
  return (0);
 }
 feth_set_detaching(fakeif);
 feth_unlock();

 feth_config(ifp, ((void*)0));
 ifnet_detach(ifp);
 return 0;
}
