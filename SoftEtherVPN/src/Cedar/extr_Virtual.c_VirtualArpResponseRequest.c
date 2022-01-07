
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ HostIP; } ;
typedef TYPE_2__ VH ;
struct TYPE_12__ {scalar_t__ TargetIP; int SrcIP; int SrcAddress; } ;
struct TYPE_9__ {TYPE_4__* ARPv4Header; } ;
struct TYPE_11__ {TYPE_1__ L3; } ;
typedef TYPE_3__ PKT ;
typedef TYPE_4__ ARPV4_HEADER ;


 int ArpIpWasKnown (TYPE_2__*,int ,int ) ;
 int VirtualArpSendResponse (TYPE_2__*,int ,int ,scalar_t__) ;

void VirtualArpResponseRequest(VH *v, PKT *packet)
{
 ARPV4_HEADER *arp;

 if (v == ((void*)0) || packet == ((void*)0))
 {
  return;
 }

 arp = packet->L3.ARPv4Header;


 ArpIpWasKnown(v, arp->SrcIP, arp->SrcAddress);


 if (v->HostIP == arp->TargetIP)
 {

  VirtualArpSendResponse(v, arp->SrcAddress, arp->SrcIP, v->HostIP);
  return;
 }

}
