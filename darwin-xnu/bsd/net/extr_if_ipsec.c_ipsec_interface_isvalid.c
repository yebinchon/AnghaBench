
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipsec_pcb {scalar_t__ ipsec_unit; } ;
typedef int * ifnet_t ;


 struct ipsec_pcb* ifnet_softc (int *) ;

int
ipsec_interface_isvalid (ifnet_t interface)
{
    struct ipsec_pcb *pcb = ((void*)0);

    if (interface == ((void*)0))
        return 0;

    pcb = ifnet_softc(interface);

    if (pcb == ((void*)0))
        return 0;


    if (pcb->ipsec_unit == 0)
        return 0;

    return 1;
}
