
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_5__ {scalar_t__ Protocol; int IsControl; int DataSize; int * Lcp; int Data; } ;
typedef TYPE_1__ PPP_PACKET ;


 int Clone (int*,int) ;
 int FreePPPPacket (TYPE_1__*) ;
 scalar_t__ PPP_PROTOCOL_CHAP ;
 scalar_t__ PPP_PROTOCOL_IPCP ;
 scalar_t__ PPP_PROTOCOL_LCP ;
 scalar_t__ PPP_PROTOCOL_PAP ;
 int * ParseLCP (scalar_t__,int ,int) ;
 scalar_t__ READ_USHORT (int*) ;
 TYPE_1__* ZeroMalloc (int) ;

PPP_PACKET *ParsePPPPacket(void *data, UINT size)
{
 PPP_PACKET *pp;
 UCHAR *buf;

 if (data == ((void*)0) || size == 0)
 {
  return ((void*)0);
 }

 pp = ZeroMalloc(sizeof(PPP_PACKET));

 buf = (UCHAR *)data;

 if (buf[0] != 0xff)
 {
  goto LABEL_ERROR;
 }
 size--;
 buf++;


 if (size < 1)
 {
  goto LABEL_ERROR;
 }
 if (buf[0] != 0x03)
 {
  goto LABEL_ERROR;
 }
 size--;
 buf++;


 if (size < 2)
 {
  goto LABEL_ERROR;
 }
 pp->Protocol = READ_USHORT(buf);
 size -= 2;
 buf += 2;

 if (pp->Protocol == PPP_PROTOCOL_LCP || pp->Protocol == PPP_PROTOCOL_PAP || pp->Protocol == PPP_PROTOCOL_CHAP || pp->Protocol == PPP_PROTOCOL_IPCP)
 {
  pp->IsControl = 1;
 }

 pp->Data = Clone(buf, size);
 pp->DataSize = size;

 if (pp->IsControl)
 {
  pp->Lcp = ParseLCP(pp->Protocol, pp->Data, pp->DataSize);
  if (pp->Lcp == ((void*)0))
  {
   goto LABEL_ERROR;
  }
 }

 return pp;

LABEL_ERROR:
 FreePPPPacket(pp);
 return ((void*)0);
}
