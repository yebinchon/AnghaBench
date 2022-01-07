
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ip ;
struct TYPE_8__ {int Size; int Buf; } ;
struct TYPE_7__ {int FlagEncrypted; } ;
typedef int SOCK ;
typedef int IP ;
typedef TYPE_1__ IKE_PACKET ;
typedef TYPE_2__ BUF ;


 int FreeBuf (TYPE_2__*) ;
 TYPE_2__* IkeBuildEx (TYPE_1__*,int *,int) ;
 int * NewUDP (int ) ;
 int ReleaseSock (int *) ;
 int SendTo (int *,int *,int,int ,int ) ;
 int SetIP (int *,int,int,int,int) ;
 int Zero (int *,int) ;

void IkeDebugUdpSendRawPacket(IKE_PACKET *p)
{
 BUF *b;
 IP ip;
 SOCK *udp;

 if (p == ((void*)0))
 {
  return;
 }

 p->FlagEncrypted = 0;

 b = IkeBuildEx(p, ((void*)0), 1);

 if (b == ((void*)0))
 {
  return;
 }

 Zero(&ip, sizeof(ip));
 SetIP(&ip, 1, 2, 3, 4);

 udp = NewUDP(0);

 SendTo(udp, &ip, 500, b->Buf, b->Size);

 ReleaseSock(udp);
 FreeBuf(b);
}
