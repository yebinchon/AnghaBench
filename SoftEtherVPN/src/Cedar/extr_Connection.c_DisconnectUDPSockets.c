
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * BufferQueue; int * s; } ;
struct TYPE_4__ {scalar_t__ Protocol; int * FirstSock; TYPE_2__* Udp; int Session; int Cedar; scalar_t__ ServerMode; } ;
typedef TYPE_1__ CONNECTION ;
typedef int BUF ;


 scalar_t__ CONNECTION_UDP ;
 int DelUDPEntry (int ,int ) ;
 int Disconnect (int *) ;
 int Free (TYPE_2__*) ;
 int FreeBuf (int *) ;
 int * GetNext (int *) ;
 int ReleaseQueue (int *) ;
 int ReleaseSock (int *) ;

void DisconnectUDPSockets(CONNECTION *c)
{

 if (c == ((void*)0))
 {
  return;
 }
 if (c->Protocol != CONNECTION_UDP)
 {
  return;
 }


 if (c->ServerMode)
 {
  DelUDPEntry(c->Cedar, c->Session);
 }


 if (c->Udp != ((void*)0))
 {
  if (c->Udp->s != ((void*)0))
  {
   ReleaseSock(c->Udp->s);
  }
  if (c->Udp->BufferQueue != ((void*)0))
  {

   BUF *b;
   while (b = GetNext(c->Udp->BufferQueue))
   {
    FreeBuf(b);
   }
   ReleaseQueue(c->Udp->BufferQueue);
  }
  Free(c->Udp);
  c->Udp = ((void*)0);
 }

 if (c->FirstSock != ((void*)0))
 {
  Disconnect(c->FirstSock);
  ReleaseSock(c->FirstSock);
  c->FirstSock = ((void*)0);
 }
}
