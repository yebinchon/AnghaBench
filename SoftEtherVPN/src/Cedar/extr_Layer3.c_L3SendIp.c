
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


struct TYPE_18__ {int DstIP; } ;
struct TYPE_17__ {int SubnetMask; int IpAddress; int IpWaitList; } ;
struct TYPE_16__ {int NextHopIp; TYPE_12__* Packet; scalar_t__ Expire; } ;
struct TYPE_15__ {TYPE_4__* IPv4Header; } ;
struct TYPE_14__ {scalar_t__ TypeL3; TYPE_2__* PacketData; TYPE_1__ L3; } ;
typedef TYPE_2__ L3PACKET ;
typedef TYPE_3__ L3IF ;
typedef int L3ARPENTRY ;
typedef TYPE_4__ IPV4_HEADER ;


 int Free (TYPE_2__*) ;
 int FreePacket (TYPE_12__*) ;
 scalar_t__ IP_WAIT_FOR_ARP_TIMEOUT ;
 int Insert (int ,TYPE_2__*) ;
 int * L3SearchArpTable (TYPE_3__*,int) ;
 int L3SendArp (TYPE_3__*,int) ;
 int L3SendIpNow (TYPE_3__*,int *,TYPE_2__*) ;
 scalar_t__ L3_IPV4 ;
 scalar_t__ Tick64 () ;

void L3SendIp(L3IF *f, L3PACKET *p)
{
 L3ARPENTRY *a = ((void*)0);
 bool broadcast = 0;
 IPV4_HEADER *ip;
 bool for_me = 0;

 if (f == ((void*)0) || p == ((void*)0))
 {
  return;
 }
 if (p->Packet->TypeL3 != L3_IPV4)
 {
  return;
 }

 ip = p->Packet->L3.IPv4Header;


 if (p->NextHopIp == 0xffffffff ||
  ((p->NextHopIp & f->SubnetMask) == (f->IpAddress & f->SubnetMask)) &&
  ((p->NextHopIp & (~f->SubnetMask)) == (~f->SubnetMask)))
 {
  broadcast = 1;
 }

 if (broadcast == 0 && ip->DstIP == f->IpAddress)
 {

 }
 else if (broadcast == 0)
 {

  a = L3SearchArpTable(f, p->NextHopIp);

  if (a == ((void*)0))
  {


   p->Expire = Tick64() + IP_WAIT_FOR_ARP_TIMEOUT;

   Insert(f->IpWaitList, p);


   L3SendArp(f, p->NextHopIp);
   return;
  }
 }

 if (for_me == 0)
 {

  L3SendIpNow(f, a, p);
 }


 Free(p->Packet->PacketData);
 FreePacket(p->Packet);
 Free(p);
}
