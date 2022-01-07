
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_14__ {int IcmpRawSocketOk; } ;
typedef TYPE_1__ VH ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_17__ {int Size; scalar_t__ Buf; } ;
struct TYPE_16__ {scalar_t__ Type; scalar_t__ TimeToLive; int Protocol; int SrcIP; void* Checksum; int TotalLength; } ;
struct TYPE_15__ {int DisconnectNow; int SrcIp; TYPE_11__* UdpRecvQueue; } ;
struct TYPE_13__ {scalar_t__ num_item; } ;
typedef TYPE_2__ NAT_ENTRY ;
typedef TYPE_3__ IPV4_HEADER ;
typedef TYPE_3__ ICMP_HEADER ;
typedef int ICMP_ECHO ;
typedef TYPE_5__ BLOCK ;


 int Endian16 (int ) ;
 int FreeBlock (TYPE_5__*) ;
 int GetIpHeaderSize (int *,int) ;
 TYPE_5__* GetNext (TYPE_11__*) ;
 scalar_t__ ICMP_TYPE_DESTINATION_UNREACHABLE ;
 scalar_t__ ICMP_TYPE_TIME_EXCEEDED ;
 void* IpChecksum (TYPE_3__*,int) ;
 int MAX (scalar_t__,int) ;
 int SendIpEx (TYPE_1__*,int ,int ,int ,int *,int,int ) ;

void PollingNatIcmp(VH *v, NAT_ENTRY *n)
{

 if (v == ((void*)0) || n == ((void*)0))
 {
  return;
 }


 if (n->UdpRecvQueue->num_item != 0)
 {
  BLOCK *block;


  while (block = GetNext(n->UdpRecvQueue))
  {

   UCHAR *data;
   UINT size;

   data = (UCHAR *)block->Buf;
   size = block->Size;

   if (size >= sizeof(IPV4_HEADER))
   {
    IPV4_HEADER *ipv4 = (IPV4_HEADER *)data;
    UINT ipv4_header_size = GetIpHeaderSize((UCHAR *)ipv4, size);

    if (ipv4_header_size >= sizeof(IPV4_HEADER) && (Endian16(ipv4->TotalLength) >= ipv4_header_size))
    {
     UCHAR *ipv4_payload = data + ipv4_header_size;
     UINT ipv4_payload_size = Endian16(ipv4->TotalLength) - ipv4_header_size;

     if (ipv4_payload_size >= sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO))
     {
      ICMP_HEADER *icmp = (ICMP_HEADER *)(data + ipv4_header_size);
      UINT icmp_size = ipv4_payload_size;

      if (icmp->Type == ICMP_TYPE_DESTINATION_UNREACHABLE || icmp->Type == ICMP_TYPE_TIME_EXCEEDED)
      {

       if (icmp_size >= (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO) + sizeof(IPV4_HEADER)))
       {
        IPV4_HEADER *orig_ipv4 = (IPV4_HEADER *)(data + ipv4_header_size + sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO));
        UINT orig_ipv4_size = icmp_size - (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO));

        UINT orig_ipv4_header_size = GetIpHeaderSize((UCHAR *)orig_ipv4, orig_ipv4_size);

        if (orig_ipv4_header_size >= sizeof(IPV4_HEADER))
        {
         orig_ipv4->SrcIP = n->SrcIp;
         orig_ipv4->Checksum = 0;
         orig_ipv4->Checksum = IpChecksum(orig_ipv4, orig_ipv4_header_size);
        }
       }
      }


      icmp->Checksum = IpChecksum(icmp, icmp_size);

      SendIpEx(v, n->SrcIp, ipv4->SrcIP, ipv4->Protocol, ipv4_payload, ipv4_payload_size,
       MAX(ipv4->TimeToLive - 1, 1));
     }
    }
   }

   FreeBlock(block);
  }

  if (v->IcmpRawSocketOk == 0)
  {

   n->DisconnectNow = 1;
  }
 }
}
