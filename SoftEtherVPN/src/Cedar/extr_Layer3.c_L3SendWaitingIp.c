
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_13__ {TYPE_1__* PacketData; } ;
struct TYPE_12__ {int * IpWaitList; } ;
struct TYPE_11__ {scalar_t__ NextHopIp; TYPE_7__* Packet; } ;
typedef int LIST ;
typedef TYPE_1__ L3PACKET ;
typedef TYPE_2__ L3IF ;
typedef int L3ARPENTRY ;


 int Add (int *,TYPE_1__*) ;
 int Delete (int *,TYPE_1__*) ;
 int Free (TYPE_1__*) ;
 int FreePacket (TYPE_7__*) ;
 int L3SendIpNow (TYPE_2__*,int *,TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;

void L3SendWaitingIp(L3IF *f, UCHAR *mac, UINT ip, L3ARPENTRY *a)
{
 UINT i;
 LIST *o = ((void*)0);

 if (f == ((void*)0) || mac == ((void*)0) || a == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(f->IpWaitList);i++)
 {
  L3PACKET *p = LIST_DATA(f->IpWaitList, i);

  if (p->NextHopIp == ip)
  {
   if (o == ((void*)0))
   {
    o = NewListFast(((void*)0));
   }
   Add(o, p);
  }
 }

 if (o != ((void*)0))
 {
  for (i = 0;i < LIST_NUM(o);i++)
  {
   L3PACKET *p = LIST_DATA(o, i);


   L3SendIpNow(f, a, p);

   Delete(f->IpWaitList, p);
   Free(p->Packet->PacketData);
   FreePacket(p->Packet);
   Free(p);
  }

  ReleaseList(o);
 }
}
