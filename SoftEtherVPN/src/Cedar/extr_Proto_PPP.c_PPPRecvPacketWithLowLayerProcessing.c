
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
typedef scalar_t__ UCHAR ;
struct TYPE_19__ {int Size; void* Buf; } ;
struct TYPE_18__ {int Protocol; int IsControl; int DataSize; TYPE_1__* Lcp; scalar_t__* Data; } ;
struct TYPE_17__ {int IsTerminateReceived; int NextId; } ;
struct TYPE_16__ {scalar_t__ Code; int DataSize; void* Data; int Id; } ;
typedef TYPE_2__ PPP_SESSION ;
typedef TYPE_3__ PPP_PACKET ;
typedef TYPE_4__ BUF ;


 void* Clone (void*,int) ;
 scalar_t__ Endian16 (int) ;
 int FreeBuf (TYPE_4__*) ;
 int FreePPPPacket (TYPE_3__*) ;
 TYPE_4__* NewBuf () ;
 void* NewPPPLCP (scalar_t__,int ) ;
 TYPE_3__* PPPRecvPacket (TYPE_2__*,int) ;
 int PPPSendPacket (TYPE_2__*,TYPE_3__*) ;
 int PPP_IS_SUPPORTED_PROTOCOL (int) ;
 scalar_t__ PPP_LCP_CODE_DROP ;
 scalar_t__ PPP_LCP_CODE_ECHO_REQUEST ;
 scalar_t__ PPP_LCP_CODE_ECHO_RESPONSE ;
 scalar_t__ PPP_LCP_CODE_IDENTIFICATION ;
 scalar_t__ PPP_LCP_CODE_PROTOCOL_REJECT ;
 scalar_t__ PPP_LCP_CODE_TERMINATE_ACK ;
 scalar_t__ PPP_LCP_CODE_TERMINATE_REQ ;
 scalar_t__ PPP_PROTOCOL_LCP ;
 int SleepThread (int) ;
 int WHERE ;
 int WriteBuf (TYPE_4__*,scalar_t__*,int) ;
 TYPE_3__* ZeroMalloc (int) ;

PPP_PACKET *PPPRecvPacketWithLowLayerProcessing(PPP_SESSION *p, bool async)
{
 PPP_PACKET *pp = ((void*)0);

 if (p == ((void*)0))
 {
  return ((void*)0);
 }

LABEL_LOOP:
 pp = PPPRecvPacket(p, async);
 if (pp == ((void*)0))
 {
  return ((void*)0);
 }

 if (PPP_IS_SUPPORTED_PROTOCOL(pp->Protocol) == 0)
 {

  PPP_PACKET *pp2 = ZeroMalloc(sizeof(PPP_PACKET));
  BUF *buf;
  UCHAR c;
  USHORT us;

  pp2->Protocol = PPP_PROTOCOL_LCP;
  pp2->IsControl = 0;

  buf = NewBuf();


  c = PPP_LCP_CODE_PROTOCOL_REJECT;
  WriteBuf(buf, &c, 1);


  c = p->NextId++;
  WriteBuf(buf, &c, 1);


  us = Endian16(pp->DataSize + 6);
  WriteBuf(buf, &us, 2);


  us = Endian16(pp->Protocol);
  WriteBuf(buf, &us, 2);


  WriteBuf(buf, pp->Data, pp->DataSize);

  pp2->Data = Clone(buf->Buf, buf->Size);
  pp2->DataSize = buf->Size;

  FreePPPPacket(pp);

  FreeBuf(buf);

  if (PPPSendPacket(p, pp2) == 0)
  {
   FreePPPPacket(pp2);
   return ((void*)0);
  }

  FreePPPPacket(pp2);
  goto LABEL_LOOP;
 }

 if (pp->IsControl && pp->Protocol == PPP_PROTOCOL_LCP)
 {
  if (pp->Lcp->Code == PPP_LCP_CODE_ECHO_REQUEST)
  {

   PPP_PACKET *pp2 = ZeroMalloc(sizeof(PPP_PACKET));

   pp2->IsControl = 1;
   pp2->Protocol = PPP_PROTOCOL_LCP;
   pp2->Lcp = NewPPPLCP(PPP_LCP_CODE_ECHO_RESPONSE, pp->Lcp->Id);
   pp2->Lcp->Data = Clone(pp->Lcp->Data, pp->Lcp->DataSize);
   pp2->Lcp->DataSize = pp->Lcp->DataSize;

   FreePPPPacket(pp);

   if (PPPSendPacket(p, pp2) == 0)
   {
    FreePPPPacket(pp2);
    return ((void*)0);
   }

   FreePPPPacket(pp2);
   goto LABEL_LOOP;
  }
  else if (pp->Lcp->Code == PPP_LCP_CODE_ECHO_RESPONSE)
  {

   FreePPPPacket(pp);
   goto LABEL_LOOP;
  }
  else if (pp->Lcp->Code == PPP_LCP_CODE_DROP)
  {

   FreePPPPacket(pp);
   goto LABEL_LOOP;
  }
  else if (pp->Lcp->Code == PPP_LCP_CODE_IDENTIFICATION)
  {

   FreePPPPacket(pp);
   WHERE;
   goto LABEL_LOOP;
  }
  else if (pp->Lcp->Code == PPP_LCP_CODE_TERMINATE_REQ)
  {

   PPP_PACKET *pp2 = ZeroMalloc(sizeof(PPP_PACKET));

   pp2->IsControl = 1;
   pp2->Protocol = PPP_PROTOCOL_LCP;
   pp2->Lcp = NewPPPLCP(PPP_LCP_CODE_TERMINATE_ACK, pp->Lcp->Id);
   pp2->Lcp->Data = Clone(pp->Lcp->Data, pp->Lcp->DataSize);
   pp2->Lcp->DataSize = pp->Lcp->DataSize;

   p->IsTerminateReceived = 1;

   FreePPPPacket(pp);

   if (PPPSendPacket(p, pp2) == 0)
   {
    FreePPPPacket(pp2);
    return ((void*)0);
   }

   SleepThread(100);

   FreePPPPacket(pp2);
   goto LABEL_LOOP;
  }
 }

 return pp;
}
