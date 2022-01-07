
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_13__ {scalar_t__ Protocol; int lock; TYPE_1__* Udp; } ;
struct TYPE_12__ {int Cancel1; TYPE_4__* Connection; } ;
struct TYPE_11__ {int ref; } ;
struct TYPE_10__ {int port; int ip; TYPE_2__* s; } ;
typedef TYPE_2__ SOCK ;
typedef TYPE_3__ SESSION ;
typedef int IP ;
typedef TYPE_4__ CONNECTION ;
typedef int CEDAR ;


 int AddRef (int ) ;
 scalar_t__ CONNECTION_UDP ;
 int Cancel (int ) ;
 int Copy (int *,int *,int) ;
 int Debug (char*,int) ;
 int Endian32 (int) ;
 TYPE_3__* GetSessionFromUDPEntry (int *,int ) ;
 int Lock (int ) ;
 int PutUDPPacketData (TYPE_4__*,int *,int) ;
 int ReleaseSession (TYPE_3__*) ;
 int ReleaseSock (TYPE_2__*) ;
 int Unlock (int ) ;

void UDPReceivedPacket(CEDAR *cedar, SOCK *s, IP *ip, UINT port, void *data, UINT size)
{
 SESSION *session;
 UINT *key32;
 UCHAR *buf;
 CONNECTION *c;

 if (s == ((void*)0) || ip == ((void*)0) || data == ((void*)0) || size == 0 || cedar == ((void*)0))
 {
  return;
 }

 if (size < 16)
 {

  return;
 }
 buf = (UCHAR *)data;
 key32 = (UINT *)(buf + 4);



 session = GetSessionFromUDPEntry(cedar, Endian32(*key32));
 if (session == ((void*)0))
 {
  Debug("Invalid UDP Session Key 32: 0x%X\n", *key32);
  return;
 }

 c = session->Connection;


 PutUDPPacketData(c, buf, size);


 Lock(c->lock);
 {
  if (c->Protocol == CONNECTION_UDP)
  {
   if (c->Udp->s != s)
   {
    if (c->Udp->s != ((void*)0))
    {
     ReleaseSock(c->Udp->s);
    }
    AddRef(s->ref);
    c->Udp->s = s;
   }
   Copy(&c->Udp->ip, ip, sizeof(UINT));
   c->Udp->port = port;
  }
 }
 Unlock(c->lock);


 Cancel(session->Cancel1);


 ReleaseSession(session);
}
