
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utun_pcb {int dummy; } ;
typedef int ifnet_t ;


 int ifnet_release (int ) ;
 struct utun_pcb* ifnet_softc (int ) ;
 int utun_free_pcb (struct utun_pcb*,int) ;

__attribute__((used)) static void
utun_detached(ifnet_t interface)
{
 struct utun_pcb *pcb = ifnet_softc(interface);
 (void)ifnet_release(interface);
 utun_free_pcb(pcb, 1);
}
