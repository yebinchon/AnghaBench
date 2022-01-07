
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* ifbond_ref ;
typedef int UInt32 ;
struct TYPE_8__ {int ifma_addr; int ifma_ifp; } ;
struct TYPE_7__ {int verbose; } ;
struct TYPE_6__ {char* ifb_name; int * ifb_distributing_array; TYPE_5__* ifb_ifma_slow_proto; int ifb_retain_count; } ;


 int FREE (int *,int ) ;
 int IFMA_REMREF (TYPE_5__*) ;
 int M_BOND ;
 int OSDecrementAtomic (int *) ;
 int bond_cloner ;
 TYPE_4__* g_bond ;
 int if_clone_softc_deallocate (int *,TYPE_1__*) ;
 int if_delmulti_anon (int ,int ) ;
 int panic (char*) ;
 int printf (char*,char*) ;

__attribute__((used)) static __inline__ void
ifbond_release(ifbond_ref ifb)
{
    UInt32 old_retain_count;

    old_retain_count = OSDecrementAtomic(&ifb->ifb_retain_count);
    switch (old_retain_count) {
    case 0:
 panic("ifbond_release: retain count is 0\n");
 break;
    case 1:
 if (g_bond->verbose) {
     printf("ifbond_release(%s)\n", ifb->ifb_name);
 }
 if (ifb->ifb_ifma_slow_proto != ((void*)0)) {
     if (g_bond->verbose) {
  printf("ifbond_release(%s) removing multicast\n",
         ifb->ifb_name);
     }
     (void) if_delmulti_anon(ifb->ifb_ifma_slow_proto->ifma_ifp,
         ifb->ifb_ifma_slow_proto->ifma_addr);
     IFMA_REMREF(ifb->ifb_ifma_slow_proto);
 }
 if (ifb->ifb_distributing_array != ((void*)0)) {
     FREE(ifb->ifb_distributing_array, M_BOND);
 }
 if_clone_softc_deallocate(&bond_cloner, ifb);
 break;
    default:
 break;
    }
    return;
}
