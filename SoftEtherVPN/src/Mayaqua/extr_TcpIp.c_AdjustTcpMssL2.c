
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_2__ {int Protocol; } ;
typedef TYPE_1__ MAC_HEADER ;


 int AdjustTcpMssL3 (int *,int,int) ;
 scalar_t__ Endian16 (int ) ;
 scalar_t__ MAC_PROTO_IPV4 ;
 scalar_t__ MAC_PROTO_IPV6 ;
 scalar_t__ MAC_PROTO_TAGVLAN ;
 scalar_t__ READ_USHORT (int *) ;

bool AdjustTcpMssL2(UCHAR *src, UINT src_size, UINT mss, USHORT tag_vlan_tpid)
{
 MAC_HEADER *mac;
 USHORT proto;

 if (src == ((void*)0) || src_size == 0 || mss == 0)
 {
  return 0;
 }
 if (tag_vlan_tpid == 0)
 {
  tag_vlan_tpid = MAC_PROTO_TAGVLAN;
 }

 if (src_size < sizeof(MAC_HEADER))
 {
  return 0;
 }

 mac = (MAC_HEADER *)src;

 src += sizeof(MAC_HEADER);
 src_size -= sizeof(MAC_HEADER);

 proto = Endian16(mac->Protocol);

 if (proto == MAC_PROTO_IPV4 || proto == MAC_PROTO_IPV6)
 {

  return AdjustTcpMssL3(src, src_size, mss);
 }
 else if (proto == tag_vlan_tpid)
 {

  if (src_size < 4)
  {
   return 0;
  }

  src += 2;
  src_size -= 2;

  proto = READ_USHORT(src);

  if (proto == MAC_PROTO_IPV4 || proto == MAC_PROTO_IPV6)
  {
   if (mss >= 5)
   {
    mss -= 4;

    src += 2;
    src_size -= 2;

    return AdjustTcpMssL3(src, src_size, mss);
   }
  }
 }

 return 0;
}
