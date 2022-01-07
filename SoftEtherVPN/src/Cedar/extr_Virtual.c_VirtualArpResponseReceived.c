
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VH ;
struct TYPE_7__ {int SrcAddress; int SrcIP; } ;
struct TYPE_5__ {TYPE_3__* ARPv4Header; } ;
struct TYPE_6__ {TYPE_1__ L3; } ;
typedef TYPE_2__ PKT ;
typedef TYPE_3__ ARPV4_HEADER ;


 int ArpIpWasKnown (int *,int ,int ) ;

void VirtualArpResponseReceived(VH *v, PKT *packet)
{
 ARPV4_HEADER *arp;

 if (v == ((void*)0) || packet == ((void*)0))
 {
  return;
 }

 arp = packet->L3.ARPv4Header;


 ArpIpWasKnown(v, arp->SrcIP, arp->SrcAddress);
}
