
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int if_index ;
 struct ifnet** ifindex2ifnet ;
 int * ifnet_addrs ;
 int ifnet_head_done () ;
 int ifnet_head_lock_shared () ;
 int pfi_attach_ifnet (struct ifnet*) ;

__attribute__((used)) static void
pf_attach_hooks(void)
{
 ifnet_head_lock_shared();





 if (ifnet_addrs != ((void*)0)) {
  int i;

  for (i = 0; i <= if_index; i++) {
   struct ifnet *ifp = ifindex2ifnet[i];
   if (ifp != ((void*)0)) {
    pfi_attach_ifnet(ifp);
   }
  }
 }
 ifnet_head_done();
}
