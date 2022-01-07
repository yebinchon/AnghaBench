
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int PEAP_CurrentReceivingMsg; int SslPipe; int UdpSock; } ;
typedef TYPE_1__ EAP_CLIENT ;


 int Disconnect (int ) ;
 int Free (TYPE_1__*) ;
 int FreeBuf (int ) ;
 int FreeSslPipe (int ) ;
 int ReleaseSock (int ) ;

void CleanupEapClient(EAP_CLIENT *e)
{
 if (e == ((void*)0))
 {
  return;
 }

 Disconnect(e->UdpSock);
 ReleaseSock(e->UdpSock);

 FreeSslPipe(e->SslPipe);

 FreeBuf(e->PEAP_CurrentReceivingMsg);

 Free(e);
}
