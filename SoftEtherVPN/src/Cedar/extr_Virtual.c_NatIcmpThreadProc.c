
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_13__ ;


typedef int ipv4 ;
typedef int icmp ;
typedef int echo ;
typedef void* USHORT ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_25__ {int Size; int Buf; } ;
struct TYPE_24__ {int Timeout; int DataSize; scalar_t__ Type; scalar_t__ Code; int Ttl; TYPE_4__* Data; scalar_t__ Ok; int IpAddress; } ;
struct TYPE_23__ {scalar_t__ Type; scalar_t__ Code; int DstIP; void* TotalLength; void* SeqNo; void* Identifier; int SrcIP; int Protocol; int TimeToLive; } ;
struct TYPE_22__ {int IcmpOriginalCopySize; int IcmpTaskFinished; TYPE_2__* v; TYPE_13__* IcmpResponseBlock; TYPE_4__* IcmpOriginalCopy; TYPE_1__* IcmpQueryBlock; int DestIp; } ;
struct TYPE_21__ {int SockEvent; } ;
struct TYPE_20__ {int Size; int Ttl; int * Buf; } ;
struct TYPE_19__ {int Ttl; } ;
typedef int THREAD ;
typedef TYPE_3__ NAT_ENTRY ;
typedef TYPE_4__ IPV4_HEADER ;
typedef int IP ;
typedef TYPE_5__ ICMP_RESULT ;
typedef TYPE_4__ ICMP_HEADER ;
typedef TYPE_4__ ICMP_ECHO ;
typedef TYPE_8__ BUF ;


 int Clone (int ,int ) ;
 void* Endian16 (void*) ;
 int FreeBuf (TYPE_8__*) ;
 scalar_t__ ICMP_TYPE_ECHO_REQUEST ;
 int IPToUINT (int *) ;
 int IPV4_SET_HEADER_LEN (TYPE_4__*,int) ;
 int IPV4_SET_VERSION (TYPE_4__*,int) ;
 int IP_PROTO_ICMPV4 ;
 TYPE_5__* IcmpApiEchoSend (int *,int ,int *,int,int ) ;
 int IcmpApiFreeResult (TYPE_5__*) ;
 int NAT_ICMP_TIMEOUT_WITH_API ;
 TYPE_13__* NewBlock (int ,int ,int ) ;
 TYPE_8__* NewBuf () ;
 int SetSockEvent (int ) ;
 int UINTToIP (int *,int ) ;
 int WriteBuf (TYPE_8__*,TYPE_4__*,int) ;
 int Zero (TYPE_4__*,int) ;

void NatIcmpThreadProc(THREAD *thread, void *param)
{
 NAT_ENTRY *n;
 ICMP_RESULT *ret = ((void*)0);
 USHORT src_id = 0, src_seqno = 0;

 if (thread == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 n = (NAT_ENTRY *)param;

 if (n->IcmpQueryBlock)
 {
  UCHAR *data = n->IcmpQueryBlock->Buf;
  UINT size = n->IcmpQueryBlock->Size;

  if (size >= (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO)))
  {
   ICMP_HEADER *icmp = (ICMP_HEADER *)data;
   ICMP_ECHO *echo = (ICMP_ECHO *)(data + sizeof(ICMP_HEADER));

   if (icmp->Type == ICMP_TYPE_ECHO_REQUEST && icmp->Code == 0)
   {
    UCHAR *icmp_payload = data + sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO);
    UINT icmp_payload_size = size - sizeof(ICMP_HEADER) - sizeof(ICMP_ECHO);
    IP dest_ip;

    src_id = Endian16(echo->Identifier);
    src_seqno = Endian16(echo->SeqNo);

    UINTToIP(&dest_ip, n->DestIp);


    ret = IcmpApiEchoSend(&dest_ip, n->IcmpQueryBlock->Ttl,
     icmp_payload, icmp_payload_size, NAT_ICMP_TIMEOUT_WITH_API);
   }
  }
 }

 if (ret != ((void*)0) && ret->Timeout == 0)
 {

  IPV4_HEADER ipv4;
  ICMP_HEADER icmp;
  ICMP_ECHO echo;
  BUF *buf = NewBuf();


  Zero(&ipv4, sizeof(ipv4));
  IPV4_SET_VERSION(&ipv4, 4);
  IPV4_SET_HEADER_LEN(&ipv4, sizeof(IPV4_HEADER) / 4);
  ipv4.TimeToLive = ret->Ttl;
  ipv4.Protocol = IP_PROTO_ICMPV4;
  ipv4.SrcIP = IPToUINT(&ret->IpAddress);
  ipv4.DstIP = 0x01010101;



  Zero(&icmp, sizeof(icmp));
  Zero(&echo, sizeof(echo));

  if (ret->Ok)
  {

   echo.Identifier = Endian16(src_id);
   echo.SeqNo = Endian16(src_seqno);

   ipv4.TotalLength = Endian16((USHORT)(sizeof(ipv4) + sizeof(icmp) + sizeof(echo) + ret->DataSize));

   WriteBuf(buf, &ipv4, sizeof(ipv4));
   WriteBuf(buf, &icmp, sizeof(icmp));
   WriteBuf(buf, &echo, sizeof(echo));
   WriteBuf(buf, ret->Data, ret->DataSize);
  }
  else
  {

   icmp.Type = ret->Type;
   icmp.Code = ret->Code;
   echo.Identifier = Endian16(src_id);
   echo.SeqNo = Endian16(src_seqno);

   ipv4.TotalLength = Endian16((USHORT)(sizeof(ipv4) + sizeof(icmp) + sizeof(echo) + n->IcmpOriginalCopySize));

   WriteBuf(buf, &ipv4, sizeof(ipv4));
   WriteBuf(buf, &icmp, sizeof(icmp));
   WriteBuf(buf, &echo, sizeof(echo));


   WriteBuf(buf, n->IcmpOriginalCopy, n->IcmpOriginalCopySize);
  }

  n->IcmpResponseBlock = NewBlock(Clone(buf->Buf, buf->Size), buf->Size, 0);
  n->IcmpResponseBlock->Ttl = ret->Ttl;

  FreeBuf(buf);
 }
 IcmpApiFreeResult(ret);


 n->IcmpTaskFinished = 1;
 SetSockEvent(n->v->SockEvent);
}
