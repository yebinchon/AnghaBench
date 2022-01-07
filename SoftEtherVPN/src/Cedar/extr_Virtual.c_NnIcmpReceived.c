
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_21__ {int Now; } ;
struct TYPE_20__ {void* Identifier; int SeqNo; } ;
struct TYPE_19__ {scalar_t__ Type; scalar_t__ Protocol; int SrcIP; void* Checksum; int Code; } ;
struct TYPE_18__ {int PublicIP; TYPE_7__* v; int NatTableForRecv; } ;
struct TYPE_17__ {int SrcIp; void* SrcPort; int LastCommTime; int TotalRecv; } ;
typedef TYPE_1__ NATIVE_NAT_ENTRY ;
typedef TYPE_2__ NATIVE_NAT ;
typedef TYPE_3__ IPV4_HEADER ;
typedef TYPE_3__ ICMP_HEADER ;
typedef TYPE_5__ ICMP_ECHO ;


 int Copy (int*,int*,int) ;
 void* Endian16 (void*) ;
 int Free (TYPE_3__*) ;
 int GetIpHeaderSize (int*,int) ;
 scalar_t__ ICMP_TYPE_DESTINATION_UNREACHABLE ;
 scalar_t__ ICMP_TYPE_ECHO_REQUEST ;
 scalar_t__ ICMP_TYPE_ECHO_RESPONSE ;
 scalar_t__ ICMP_TYPE_TIME_EXCEEDED ;
 scalar_t__ IP_PROTO_ICMPV4 ;
 void* IpChecksum (TYPE_3__*,int) ;
 int MAX (int,int) ;
 int NAT_ICMP ;
 int NnIpSendForInternet (TYPE_2__*,scalar_t__,int ,int,int,TYPE_3__*,int,int) ;
 int NnSetNat (TYPE_1__*,int ,int ,int ,int ,int ,int,void*) ;
 TYPE_1__* SearchHash (int ,TYPE_1__*) ;
 int SendIpEx (TYPE_7__*,int,int,scalar_t__,TYPE_3__*,int,int ) ;
 TYPE_3__* ZeroMalloc (int) ;

void NnIcmpReceived(NATIVE_NAT *t, UINT src_ip, UINT dest_ip, void *data, UINT size, UCHAR ttl, UINT max_l3_size)
{
 ICMP_HEADER *icmp;

 if (t == ((void*)0) || data == ((void*)0))
 {
  return;
 }
 if (ttl == 0)
 {
  ttl = 1;
 }


 if (size < sizeof(ICMP_HEADER))
 {
  return;
 }

 icmp = (ICMP_HEADER *)data;

 if (icmp->Type == ICMP_TYPE_ECHO_RESPONSE)
 {
  UCHAR *payload;
  UINT payload_size;
  ICMP_ECHO *echo;
  NATIVE_NAT_ENTRY tt, *e;


  echo = (ICMP_ECHO *)(((UCHAR *)data) + sizeof(ICMP_HEADER));

  if (size < (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO)))
  {
   return;
  }

  payload = ((UCHAR *)data) + sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO);
  payload_size = size - (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO));


  NnSetNat(&tt, NAT_ICMP, 0, 0, 0, 0, dest_ip, Endian16(echo->Identifier));

  e = SearchHash(t->NatTableForRecv, &tt);

  if (e != ((void*)0))
  {

   icmp->Checksum = 0;
   echo->Identifier = Endian16(e->SrcPort);
   icmp->Checksum = IpChecksum(icmp, size);

   e->LastCommTime = t->v->Now;
   e->TotalRecv += (UINT64)size;


   SendIpEx(t->v, e->SrcIp, src_ip, IP_PROTO_ICMPV4, icmp, size, MAX(ttl - 1, 1));
  }
 }
 else if (icmp->Type == ICMP_TYPE_ECHO_REQUEST)
 {
  UCHAR *payload;
  UINT payload_size;
  ICMP_ECHO *echo;


  echo = (ICMP_ECHO *)(((UCHAR *)data) + sizeof(ICMP_HEADER));

  if (size < (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO)))
  {
   return;
  }

  payload = ((UCHAR *)data) + sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO);
  payload_size = size - (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO));

  if (dest_ip == t->PublicIP)
  {

   ICMP_HEADER *ret_icmp;
   ICMP_ECHO *ret_echo;
   UINT ret_size = sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO) + payload_size;

   ret_icmp = ZeroMalloc(ret_size);
   ret_echo = (ICMP_ECHO *)(((UCHAR *)ret_icmp) + sizeof(ICMP_HEADER));

   ret_icmp->Type = ICMP_TYPE_ECHO_RESPONSE;
   ret_icmp->Code = icmp->Code;

   ret_echo->Identifier = echo->Identifier;
   ret_echo->SeqNo = echo->SeqNo;

   Copy((UCHAR *)ret_icmp + sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO),
    payload, payload_size);

   ret_icmp->Checksum = IpChecksum(ret_icmp, ret_size);

   NnIpSendForInternet(t, IP_PROTO_ICMPV4, 0, dest_ip, src_ip, ret_icmp, ret_size, max_l3_size);

   Free(ret_icmp);
  }
 }
 else
 {
  if (icmp->Type == ICMP_TYPE_DESTINATION_UNREACHABLE || icmp->Type == ICMP_TYPE_TIME_EXCEEDED)
  {

   if (size >= (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO) + sizeof(IPV4_HEADER)))
   {
    IPV4_HEADER *orig_ipv4 = (IPV4_HEADER *)(((UCHAR *)data) + sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO));
    UINT orig_ipv4_size = size - (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO));

    UINT orig_ipv4_header_size = GetIpHeaderSize((UCHAR *)orig_ipv4, orig_ipv4_size);

    if (orig_ipv4_header_size >= sizeof(IPV4_HEADER) && orig_ipv4_size >= orig_ipv4_header_size)
    {
     if (orig_ipv4->Protocol == IP_PROTO_ICMPV4)
     {

      UINT inner_icmp_size = orig_ipv4_size - orig_ipv4_header_size;

      if (inner_icmp_size >= (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO)))
      {
       ICMP_HEADER *inner_icmp = (ICMP_HEADER *)(((UCHAR *)data) +
        sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO) + orig_ipv4_header_size);

       if (inner_icmp->Type == ICMP_TYPE_ECHO_REQUEST)
       {
        ICMP_ECHO *inner_echo = (ICMP_ECHO *)(((UCHAR *)inner_icmp) + sizeof(ICMP_HEADER));
        NATIVE_NAT_ENTRY tt, *e;


        NnSetNat(&tt, NAT_ICMP, 0, 0, 0, 0, orig_ipv4->SrcIP, Endian16(inner_echo->Identifier));

        e = SearchHash(t->NatTableForRecv, &tt);

        if (e != ((void*)0))
        {
         e->LastCommTime = t->v->Now;


         inner_echo->Identifier = Endian16(e->SrcPort);
         inner_icmp->Checksum = 0;

         orig_ipv4->SrcIP = e->SrcIp;

         orig_ipv4->Checksum = 0;
         orig_ipv4->Checksum = IpChecksum(orig_ipv4, orig_ipv4_header_size);


         if (1)
         {
          UCHAR *payload;
          UINT payload_size;
          ICMP_ECHO *echo;


          echo = (ICMP_ECHO *)(((UCHAR *)data) + sizeof(ICMP_HEADER));

          if (size < (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO)))
          {
           return;
          }

          payload = ((UCHAR *)data) + sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO);
          payload_size = size - (sizeof(ICMP_HEADER) + sizeof(ICMP_ECHO));


          icmp->Checksum = 0;
          echo->Identifier = Endian16(e->SrcPort);
          icmp->Checksum = IpChecksum(icmp, size);


          SendIpEx(t->v, e->SrcIp, src_ip, IP_PROTO_ICMPV4, icmp, size, MAX(ttl - 1, 1));
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
