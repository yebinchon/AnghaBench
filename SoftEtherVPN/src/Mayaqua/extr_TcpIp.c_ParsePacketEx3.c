
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;
typedef int PKT ;


 int * ParsePacketEx4 (int *,int ,int,int ,int,int,int) ;

PKT *ParsePacketEx3(UCHAR *buf, UINT size, bool no_l3, UINT vlan_type_id, bool bridge_id_as_mac_address)
{
 return ParsePacketEx4(buf, size, no_l3, vlan_type_id, bridge_id_as_mac_address, 0, 0);
}
