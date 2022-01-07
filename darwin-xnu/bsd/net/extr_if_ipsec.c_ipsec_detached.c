
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipsec_pcb {int dummy; } ;
typedef int ifnet_t ;


 int ifnet_release (int ) ;
 struct ipsec_pcb* ifnet_softc (int ) ;
 int ipsec_free_pcb (struct ipsec_pcb*,int) ;

__attribute__((used)) static void
ipsec_detached(ifnet_t interface)
{
 struct ipsec_pcb *pcb = ifnet_softc(interface);
 (void)ifnet_release(interface);
 ipsec_free_pcb(pcb, 1);
}
