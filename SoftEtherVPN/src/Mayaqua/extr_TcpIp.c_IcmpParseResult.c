
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_12__ {scalar_t__ Identifier; scalar_t__ SeqNo; } ;
struct TYPE_11__ {scalar_t__ Checksum; scalar_t__ Type; int Code; } ;
struct TYPE_10__ {int Ok; scalar_t__ Type; int IpAddress; scalar_t__ DataSize; void* Data; int Ttl; int Code; } ;
struct TYPE_9__ {scalar_t__ Protocol; scalar_t__ TotalLength; int TimeToLive; int SrcIP; } ;
typedef TYPE_1__ IPV4_HEADER ;
typedef int IP ;
typedef TYPE_2__ ICMP_RESULT ;
typedef TYPE_3__ ICMP_HEADER ;
typedef TYPE_4__ ICMP_ECHO ;


 void* Clone (int *,scalar_t__) ;
 int Copy (int *,int *,int) ;
 scalar_t__ Endian16 (scalar_t__) ;
 scalar_t__ GetIpHeaderSize (int *,scalar_t__) ;
 scalar_t__ ICMP_TYPE_ECHO_REQUEST ;
 scalar_t__ ICMP_TYPE_ECHO_RESPONSE ;
 int IPV4_GET_VERSION (TYPE_1__*) ;
 scalar_t__ IP_PROTO_ICMPV4 ;
 scalar_t__ IpChecksum (TYPE_3__*,scalar_t__) ;
 int IsIP4 (int *) ;
 int UINTToIP (int *,int ) ;
 TYPE_2__* ZeroMalloc (int) ;

ICMP_RESULT *IcmpParseResult(IP *dest_ip, USHORT src_id, USHORT src_seqno, UCHAR *recv_buffer, UINT recv_buffer_size)
{
 ICMP_RESULT *ret = ((void*)0);
 UINT i;

 if (dest_ip == ((void*)0) || IsIP4(dest_ip) == 0 || recv_buffer == ((void*)0) || recv_buffer_size == 0)
 {
  return ((void*)0);
 }

 i = recv_buffer_size;

 if (1)
 {
  UINT ip_header_size = GetIpHeaderSize(recv_buffer, i);
  if (ip_header_size >= sizeof(IPV4_HEADER) && (ip_header_size <= i))
  {
   IPV4_HEADER *ipv4 = (IPV4_HEADER *)recv_buffer;
   if ((IPV4_GET_VERSION(ipv4) == 4) && (ipv4->Protocol == IP_PROTO_ICMPV4))
   {
    UINT ip_total_len = (UINT)Endian16(ipv4->TotalLength);

    if ((ip_total_len >= sizeof(IPV4_HEADER)) && (ip_total_len <= i) && (ip_total_len >= ip_header_size))
    {
     UINT icmp_packet_size = ip_total_len - ip_header_size;
     ICMP_HEADER *icmp = (ICMP_HEADER *)(recv_buffer + ip_header_size);

     if (icmp_packet_size >= sizeof(ICMP_HEADER))
     {
      USHORT chksum = icmp->Checksum;
      USHORT chksum2;
      icmp->Checksum = 0;

      chksum2 = IpChecksum(icmp, icmp_packet_size);

      if (chksum2 == chksum)
      {
       if (icmp->Type == ICMP_TYPE_ECHO_RESPONSE)
       {
        ICMP_ECHO *echo = (ICMP_ECHO *)(recv_buffer + ip_header_size + sizeof(ICMP_HEADER));
        if (icmp_packet_size >= (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO)))
        {
         if (Endian16(echo->Identifier) == src_id && (src_seqno == 0 || Endian16(echo->SeqNo) == src_seqno))
         {
          IP ip;

          UINTToIP(&ip, ipv4->SrcIP);


          ret = ZeroMalloc(sizeof(ICMP_RESULT));

          ret->Ok = 1;
          ret->Ttl = ipv4->TimeToLive;
          ret->DataSize = icmp_packet_size - (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO));
          ret->Data = Clone(recv_buffer + ip_header_size + sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO),
           ret->DataSize);
          Copy(&ret->IpAddress, &ip, sizeof(IP));
         }
        }
       }
       else if (icmp->Type == ICMP_TYPE_ECHO_REQUEST)
       {

       }
       else
       {


        IPV4_HEADER *orig_ipv4 = (IPV4_HEADER *)(recv_buffer + ip_header_size + 4 + sizeof(ICMP_HEADER));
        if (icmp_packet_size >= (sizeof(ICMP_HEADER) + 4 + sizeof(IPV4_HEADER)))
        {
         UINT orig_ipv4_header_size = GetIpHeaderSize((UCHAR *)orig_ipv4, icmp_packet_size - 4 - sizeof(ICMP_HEADER));
         if (orig_ipv4_header_size >= sizeof(IPV4_HEADER))
         {
          if ((IPV4_GET_VERSION(orig_ipv4) == 4) && (orig_ipv4->Protocol == IP_PROTO_ICMPV4))
          {
           if (icmp_packet_size >= (sizeof(ICMP_HEADER) + 4 + orig_ipv4_header_size + sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO)))
           {
            ICMP_HEADER *orig_icmp = (ICMP_HEADER *)(recv_buffer + ip_header_size + sizeof(ICMP_HEADER) + 4 + orig_ipv4_header_size);
            ICMP_ECHO *orig_echo = (ICMP_ECHO *)(recv_buffer + ip_header_size + sizeof(ICMP_HEADER) + 4 + orig_ipv4_header_size + sizeof(ICMP_HEADER));

            if (orig_icmp->Type == ICMP_TYPE_ECHO_REQUEST && orig_echo->Identifier == Endian16(src_id) && (src_seqno == 0 || orig_echo->SeqNo == Endian16(src_seqno)))
            {
             IP ip;

             UINTToIP(&ip, ipv4->SrcIP);

             ret = ZeroMalloc(sizeof(ICMP_RESULT));

             ret->Type = icmp->Type;
             ret->Code = icmp->Code;
             ret->Ttl = ipv4->TimeToLive;
             ret->DataSize = icmp_packet_size - (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO));
             ret->Data = Clone(recv_buffer + ip_header_size + sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO),
              ret->DataSize);
             Copy(&ret->IpAddress, &ip, sizeof(IP));
            }
           }
          }
         }
        }
       }
      }
     }
    }
   }
  }
 }

 return ret;
}
