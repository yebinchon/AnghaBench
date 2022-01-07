
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int MacAddress; scalar_t__ UseDhcp; } ;
typedef TYPE_1__ VH ;
struct TYPE_14__ {int TypeL3; scalar_t__ TypeL4; scalar_t__ TypeL7; int MacAddressDest; scalar_t__ BroadcastPacket; } ;
typedef TYPE_2__ PKT ;


 scalar_t__ Cmp (int ,int ,int) ;


 scalar_t__ L4_UDP ;
 scalar_t__ L7_DHCPV4 ;
 int VirtualArpReceived (TYPE_1__*,TYPE_2__*) ;
 int VirtualDhcpServer (TYPE_1__*,TYPE_2__*) ;
 int VirtualIpReceived (TYPE_1__*,TYPE_2__*) ;
 int VirtualLayer2Filter (TYPE_1__*,TYPE_2__*) ;

void VirtualLayer2(VH *v, PKT *packet)
{
 bool ok;

 if (packet == ((void*)0) || v == ((void*)0))
 {
  return;
 }


 if (VirtualLayer2Filter(v, packet) == 0)
 {

  return;
 }

 ok = 0;
 if (packet->TypeL3 == 128 && packet->TypeL4 == L4_UDP && packet->TypeL7 == L7_DHCPV4)
 {
  if (v->UseDhcp)
  {

   if (packet->BroadcastPacket || Cmp(packet->MacAddressDest, v->MacAddress, 6) == 0)
   {

    VirtualDhcpServer(v, packet);
    ok = 1;
   }
  }
 }

 if (ok == 0)
 {

  switch (packet->TypeL3)
  {
  case 129:
   VirtualArpReceived(v, packet);
   break;

  case 128:
   VirtualIpReceived(v, packet);
   break;
  }
 }
}
