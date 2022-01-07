
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_9__ {int IgnoreSendErr; } ;
struct TYPE_8__ {int Size; int Buf; } ;
struct TYPE_7__ {TYPE_3__* UdpSock; int ServerPort; int ServerIp; int SharedSecret; } ;
typedef int RADIUS_PACKET ;
typedef TYPE_1__ EAP_CLIENT ;
typedef TYPE_2__ BUF ;


 int FreeBuf (TYPE_2__*) ;
 TYPE_2__* GenerateRadiusPacket (int *,int ) ;
 scalar_t__ SendTo (TYPE_3__*,int *,int ,int ,int ) ;

bool EapSendPacket(EAP_CLIENT *e, RADIUS_PACKET *r)
{
 BUF *b;
 bool ret = 0;
 if (e == ((void*)0) || r == ((void*)0))
 {
  return 0;
 }

 b = GenerateRadiusPacket(r, e->SharedSecret);
 if (b != ((void*)0))
 {
  UINT r = SendTo(e->UdpSock, &e->ServerIp, e->ServerPort, b->Buf, b->Size);
  if (!(r == 0 && e->UdpSock->IgnoreSendErr == 0))
  {
   ret = 1;
  }


  FreeBuf(b);
 }

 return ret;
}
