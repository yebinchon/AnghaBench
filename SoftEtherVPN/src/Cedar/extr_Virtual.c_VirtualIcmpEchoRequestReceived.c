
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ IcmpApiOk; scalar_t__ IcmpRawSocketOk; TYPE_1__* HubOption; } ;
typedef TYPE_2__ VH ;
typedef int USHORT ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_11__ {int SeqNo; int Identifier; } ;
struct TYPE_9__ {scalar_t__ DisableUserModeSecureNAT; } ;
typedef TYPE_3__ ICMP_ECHO ;


 int Endian16 (int ) ;
 int NnIcmpEchoRecvForInternet (TYPE_2__*,int,int,void*,int,int ,void*,int,int *,int,int) ;
 scalar_t__ NnIsActive (TYPE_2__*) ;
 int VirtualIcmpEchoRequestReceivedRaw (TYPE_2__*,int,int,void*,int,int ,void*,int,int *,int) ;
 int VirtualIcmpEchoSendResponse (TYPE_2__*,int,int,int ,int ,void*,int) ;

void VirtualIcmpEchoRequestReceived(VH *v, UINT src_ip, UINT dst_ip, void *data, UINT size, UCHAR ttl, void *icmp_data, UINT icmp_size, UCHAR *ip_header, UINT ip_header_size, UINT max_l3_size)
{
 ICMP_ECHO *echo;
 UINT data_size;
 void *data_buf;
 USHORT id, seq_no;

 if (v == ((void*)0) || data == ((void*)0) || icmp_data == ((void*)0))
 {
  return;
 }



 if (NnIsActive(v))
 {

  NnIcmpEchoRecvForInternet(v, src_ip, dst_ip, data, size, ttl, icmp_data, icmp_size,
   ip_header, ip_header_size, max_l3_size);
  return;
 }

 if (v->HubOption != ((void*)0) && v->HubOption->DisableUserModeSecureNAT)
 {

  return;
 }

 if (v->IcmpRawSocketOk || v->IcmpApiOk)
 {

  VirtualIcmpEchoRequestReceivedRaw(v, src_ip, dst_ip, data, size, ttl, icmp_data, icmp_size,
   ip_header, ip_header_size);
  return;
 }



 echo = (ICMP_ECHO *)data;


 if (size < sizeof(ICMP_ECHO))
 {

  return;
 }

 id = Endian16(echo->Identifier);
 seq_no = Endian16(echo->SeqNo);


 data_size = size - sizeof(ICMP_ECHO);


 data_buf = ((UCHAR *)data) + sizeof(ICMP_ECHO);


 VirtualIcmpEchoSendResponse(v, dst_ip, src_ip, id, seq_no, data_buf, data_size);
}
