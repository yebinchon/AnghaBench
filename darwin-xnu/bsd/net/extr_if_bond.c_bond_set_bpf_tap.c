
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ifnet {int dummy; } ;
typedef TYPE_1__* ifbond_ref ;
typedef int bpf_tap_mode ;
typedef void* bpf_packet_func ;
struct TYPE_4__ {int * ifb_bpf_output; int * ifb_bpf_input; } ;






 int ENODEV ;
 int bond_lock () ;
 int bond_unlock () ;
 scalar_t__ ifbond_flags_if_detaching (TYPE_1__*) ;
 TYPE_1__* ifnet_softc (struct ifnet*) ;

__attribute__((used)) static int
bond_set_bpf_tap(struct ifnet * ifp, bpf_tap_mode mode, bpf_packet_func func)
{
    ifbond_ref ifb;

    bond_lock();
    ifb = ifnet_softc(ifp);
    if (ifb == ((void*)0) || ifbond_flags_if_detaching(ifb)) {
 bond_unlock();
 return (ENODEV);
    }
    switch (mode) {
    case 131:
 ifb->ifb_bpf_input = ifb->ifb_bpf_output = ((void*)0);
 break;

    case 130:
 ifb->ifb_bpf_input = func;
 break;

    case 128:
 ifb->ifb_bpf_output = func;
 break;

    case 129:
 ifb->ifb_bpf_input = ifb->ifb_bpf_output = func;
 break;
    default:
 break;
    }
    bond_unlock();
    return 0;
}
