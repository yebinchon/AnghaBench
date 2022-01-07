
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_12__ {int * SendQueue; int * IpWaitList; int * IpPacketQueue; int * ArpWaitTable; int * ArpTable; } ;
struct TYPE_11__ {TYPE_1__* Packet; } ;
struct TYPE_10__ {TYPE_2__* PacketData; } ;
typedef TYPE_1__ PKT ;
typedef TYPE_2__ L3PACKET ;
typedef TYPE_3__ L3IF ;
typedef TYPE_2__ L3ARPWAIT ;
typedef TYPE_2__ L3ARPENTRY ;


 int Free (TYPE_2__*) ;
 int FreePacket (TYPE_1__*) ;
 void* GetNext (int *) ;
 TYPE_2__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ReleaseList (int *) ;
 int ReleaseQueue (int *) ;

void L3FreeInterface(L3IF *f)
{
 UINT i;
 L3PACKET *p;
 PKT *pkt;

 if (f == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(f->ArpTable);i++)
 {
  L3ARPENTRY *a = LIST_DATA(f->ArpTable, i);
  Free(a);
 }
 ReleaseList(f->ArpTable);
 f->ArpTable = ((void*)0);

 for (i = 0;i < LIST_NUM(f->ArpWaitTable);i++)
 {
  L3ARPWAIT *w = LIST_DATA(f->ArpWaitTable, i);
  Free(w);
 }
 ReleaseList(f->ArpWaitTable);
 f->ArpWaitTable = ((void*)0);

 while (p = GetNext(f->IpPacketQueue))
 {
  Free(p->Packet->PacketData);
  FreePacket(p->Packet);
  Free(p);
 }
 ReleaseQueue(f->IpPacketQueue);
 f->IpPacketQueue = ((void*)0);

 for (i = 0;i < LIST_NUM(f->IpWaitList);i++)
 {
  L3PACKET *p = LIST_DATA(f->IpWaitList, i);
  Free(p->Packet->PacketData);
  FreePacket(p->Packet);
  Free(p);
 }
 ReleaseList(f->IpWaitList);
 f->IpWaitList = ((void*)0);

 while (pkt = GetNext(f->SendQueue))
 {
  Free(pkt->PacketData);
  FreePacket(pkt);
 }
 ReleaseQueue(f->SendQueue);
 f->SendQueue = ((void*)0);
}
