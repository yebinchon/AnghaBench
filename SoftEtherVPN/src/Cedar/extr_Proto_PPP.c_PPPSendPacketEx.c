
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int Size; int Buf; } ;
struct TYPE_6__ {int TubeSend; int FlushList; } ;
typedef TYPE_1__ PPP_SESSION ;
typedef int PPP_PACKET ;
typedef TYPE_2__ BUF ;


 int AddTubeToFlushList (int ,int ) ;
 TYPE_2__* BuildPPPPacketData (int *) ;
 int FreeBuf (TYPE_2__*) ;
 int TubeSendEx (int ,int ,int ,int *,int) ;

bool PPPSendPacketEx(PPP_SESSION *p, PPP_PACKET *pp, bool no_flush)
{
 bool ret = 0;
 BUF *b;

 if (p == ((void*)0) || pp == ((void*)0))
 {
  return 0;
 }

 b = BuildPPPPacketData(pp);
 if (b == ((void*)0))
 {
  return 0;
 }

 ret = TubeSendEx(p->TubeSend, b->Buf, b->Size, ((void*)0), no_flush);

 if (no_flush)
 {
  AddTubeToFlushList(p->FlushList, p->TubeSend);
 }

 FreeBuf(b);

 return ret;
}
