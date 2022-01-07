
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;
typedef int PKT ;


 int * ParsePacketEx3 (int *,int ,int,int ,int) ;

PKT *ParsePacketEx2(UCHAR *buf, UINT size, bool no_l3, UINT vlan_type_id)
{
 return ParsePacketEx3(buf, size, no_l3, vlan_type_id, 1);
}
