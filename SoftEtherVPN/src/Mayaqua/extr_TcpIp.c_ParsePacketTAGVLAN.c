
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int USHORT ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_5__ {TYPE_2__* TagVlanHeader; } ;
struct TYPE_7__ {int VlanId; TYPE_1__ L3; int TypeL3; } ;
struct TYPE_6__ {int Data; } ;
typedef TYPE_2__ TAGVLAN_HEADER ;
typedef TYPE_3__ PKT ;


 int L3_TAGVLAN ;
 int READ_USHORT (int ) ;

bool ParsePacketTAGVLAN(PKT *p, UCHAR *buf, UINT size)
{
 USHORT vlan_ushort;

 if (p == ((void*)0) || buf == ((void*)0))
 {
  return 0;
 }


 if (size < sizeof(TAGVLAN_HEADER))
 {
  return 0;
 }


 p->L3.TagVlanHeader = (TAGVLAN_HEADER *)buf;
 p->TypeL3 = L3_TAGVLAN;

 buf += sizeof(TAGVLAN_HEADER);
 size -= sizeof(TAGVLAN_HEADER);

 vlan_ushort = READ_USHORT(p->L3.TagVlanHeader->Data);
 vlan_ushort = vlan_ushort & 0xFFF;

 p->VlanId = vlan_ushort;

 return 1;
}
