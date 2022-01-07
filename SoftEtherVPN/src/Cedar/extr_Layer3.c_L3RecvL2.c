
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int MacAddress; } ;
struct TYPE_10__ {int BroadcastPacket; scalar_t__ TypeL3; int PacketData; int MacAddressDest; int MacAddressSrc; } ;
typedef TYPE_1__ PKT ;
typedef TYPE_2__ L3IF ;


 scalar_t__ Cmp (int ,int ,int) ;
 int Free (int ) ;
 int FreePacket (TYPE_1__*) ;
 int L3RecvArp (TYPE_2__*,TYPE_1__*) ;
 int L3RecvIp (TYPE_2__*,TYPE_1__*,int) ;
 scalar_t__ L3_ARPV4 ;
 scalar_t__ L3_IPV4 ;

void L3RecvL2(L3IF *f, PKT *p)
{

 if (f == ((void*)0) || p == ((void*)0))
 {
  return;
 }



 if (Cmp(p->MacAddressSrc, f->MacAddress, 6) == 0 ||
  (p->BroadcastPacket == 0 && Cmp(p->MacAddressDest, f->MacAddress, 6) != 0))
 {

  Free(p->PacketData);
  FreePacket(p);
  return;
 }

 if (p->TypeL3 == L3_ARPV4)
 {

  L3RecvArp(f, p);


  Free(p->PacketData);
  FreePacket(p);
 }
 else if (p->TypeL3 == L3_IPV4)
 {

  L3RecvIp(f, p, 0);
 }
 else
 {

  Free(p->PacketData);
  FreePacket(p);
 }
}
