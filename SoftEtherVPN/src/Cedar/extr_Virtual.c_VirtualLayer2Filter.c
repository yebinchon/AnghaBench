
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int MacAddress; } ;
typedef TYPE_1__ VH ;
struct TYPE_6__ {int MacAddressDest; int MacAddressSrc; scalar_t__ BroadcastPacket; } ;
typedef TYPE_2__ PKT ;


 scalar_t__ Cmp (int ,int ,int) ;

bool VirtualLayer2Filter(VH *v, PKT *packet)
{

 if (v == ((void*)0) || packet == ((void*)0))
 {
  return 0;
 }


 if (packet->BroadcastPacket)
 {
  return 1;
 }


 if (Cmp(packet->MacAddressSrc, v->MacAddress, 6) == 0)
 {
  return 0;
 }

 if (Cmp(packet->MacAddressDest, v->MacAddress, 6) == 0)
 {
  return 1;
 }


 return 0;
}
