
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int UINT ;
typedef int UCHAR ;


 int Copy (int*,int*,int) ;
 int Endian16 (int) ;
 int Free (int*) ;
 int MAC_PROTO_TAGVLAN ;
 int* Malloc (int) ;

void VLanInsertTag(void **packet_data, UINT *packet_size, UINT vlan_id, UINT vlan_tpid)
{
 UINT dest_size;
 UCHAR *dest_data;
 UINT src_size;
 UCHAR *src_data;
 USHORT vlan_ushort = Endian16(((USHORT)vlan_id) & 0xFFF);
 USHORT vlan_tpid_ushort;

 if (packet_data == ((void*)0) || *packet_data == ((void*)0) || packet_size == ((void*)0) ||
  *packet_size < 14 || vlan_id == 0)
 {
  return;
 }
 if (vlan_tpid == 0)
 {
  vlan_tpid = MAC_PROTO_TAGVLAN;
 }

 vlan_tpid_ushort = Endian16((USHORT)vlan_tpid);

 src_size = *packet_size;
 src_data = (UCHAR *)(*packet_data);

 dest_size = src_size + 4;
 dest_data = Malloc(dest_size);

 Copy(&dest_data[12], &vlan_tpid_ushort, sizeof(USHORT));
 Copy(&dest_data[14], &vlan_ushort, sizeof(USHORT));

 Copy(&dest_data[0], &src_data[0], 12);
 Copy(&dest_data[16], &src_data[12], src_size - 12);

 *packet_size = dest_size;
 *packet_data = dest_data;

 Free(src_data);
}
