
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int UINT ;
typedef scalar_t__ UCHAR ;


 int Endian16 (int) ;
 int MAC_PROTO_TAGVLAN ;
 int READ_USHORT (scalar_t__*) ;

bool VLanRemoveTag(void **packet_data, UINT *packet_size, UINT vlan_id, UINT vlan_tpid)
{
 UCHAR *src_data;
 UINT src_size;
 USHORT vlan_tpid_ushort;
 UCHAR *vlan_tpid_uchar;

 if (packet_data == ((void*)0) || *packet_data == ((void*)0) || packet_size == ((void*)0) ||
  *packet_size < 14)
 {
  return 0;
 }

 if (vlan_tpid == 0)
 {
  vlan_tpid = MAC_PROTO_TAGVLAN;
 }

 vlan_tpid_ushort = Endian16((USHORT)vlan_tpid);
 vlan_tpid_uchar = (UCHAR *)(&vlan_tpid_ushort);

 src_data = (UCHAR *)(*packet_data);
 src_size = *packet_size;

 if (src_data[12] == vlan_tpid_uchar[0] && src_data[13] == vlan_tpid_uchar[1])
 {
  if (src_size >= 18)
  {
   USHORT vlan_ushort;

   vlan_ushort = READ_USHORT(&src_data[14]);
   vlan_ushort = vlan_ushort & 0xFFF;

   if (vlan_id == 0 || (vlan_ushort == vlan_id))
   {
    UINT dest_size = src_size - 4;
    UINT i;

    for (i = 12;i < dest_size;i++)
    {
     src_data[i] = src_data[i + 4];
    }

    *packet_size = dest_size;

    return 1;
   }
  }
 }

 return 0;
}
