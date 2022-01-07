
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ IpMss; int NextId; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ USHORT ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;


 scalar_t__ MAX_IP_DATA_SIZE_TOTAL ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int SendFragmentedIp (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int *,scalar_t__,int *,int ) ;

void SendIpEx(VH *v, UINT dest_ip, UINT src_ip, UCHAR protocol, void *data, UINT size, UCHAR ttl)
{
 UINT mss;
 UCHAR *buf;
 USHORT offset;
 USHORT id;
 USHORT total_size;
 UINT size_of_this_packet;

 if (v == ((void*)0) || data == ((void*)0) || size == 0 || size > MAX_IP_DATA_SIZE_TOTAL)
 {
  return;
 }


 mss = v->IpMss;


 buf = (UCHAR *)data;


 id = (v->NextId++);


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


  SendFragmentedIp(v, dest_ip, src_ip, id,
   total_size, offset, protocol, buf + offset, size_of_this_packet, ((void*)0), ttl);
  if (last_packet)
  {
   break;
  }

  offset += (USHORT)size_of_this_packet;
 }
}
