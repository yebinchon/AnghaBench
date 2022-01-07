
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_6__ {int NextId; TYPE_1__* v; } ;
struct TYPE_5__ {scalar_t__ IpMss; } ;
typedef TYPE_2__ NATIVE_NAT ;


 scalar_t__ IP_HEADER_SIZE ;
 scalar_t__ MAX (scalar_t__,int) ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int NnIpSendFragmentedForInternet (TYPE_2__*,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int *,scalar_t__,int ) ;

void NnIpSendForInternet(NATIVE_NAT *t, UCHAR ip_protocol, UCHAR ttl, UINT src_ip, UINT dest_ip, void *data, UINT size, UINT max_l3_size)
{
 UINT mss = 0;
 UCHAR *buf;
 USHORT offset;
 USHORT id;
 USHORT total_size;
 UINT size_of_this_packet;

 if (t == ((void*)0) || data == ((void*)0))
 {
  return;
 }


 if (max_l3_size > IP_HEADER_SIZE)
 {
  mss = max_l3_size - IP_HEADER_SIZE;
 }

 if (mss == 0)
 {
  mss = t->v->IpMss;
 }

 mss = MAX(mss, 1000);


 buf = (UCHAR *)data;


 id = (t->NextId++);


 total_size = (USHORT)size;


 offset = 0;

 while (1)
 {
  bool last_packet = 0;

  size_of_this_packet = MIN((USHORT)mss, (total_size - offset));
  if ((offset + (USHORT)size_of_this_packet) == total_size)
  {
   last_packet = 1;
  }


  NnIpSendFragmentedForInternet(t, ip_protocol, src_ip, dest_ip, id, total_size, offset,
   buf + offset, size_of_this_packet, ttl);
  if (last_packet)
  {
   break;
  }

  offset += (USHORT)size_of_this_packet;
 }
}
