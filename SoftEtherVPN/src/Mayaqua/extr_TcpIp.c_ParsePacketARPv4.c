
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_4__ {int * ARPv4Header; } ;
struct TYPE_5__ {int TypeL3; TYPE_1__ L3; } ;
typedef TYPE_2__ PKT ;
typedef int ARPV4_HEADER ;


 int L3_ARPV4 ;

bool ParsePacketARPv4(PKT *p, UCHAR *buf, UINT size)
{

 if (p == ((void*)0) || buf == ((void*)0))
 {
  return 0;
 }


 if (size < sizeof(ARPV4_HEADER))
 {
  return 0;
 }


 p->L3.ARPv4Header = (ARPV4_HEADER *)buf;
 p->TypeL3 = L3_ARPV4;

 buf += sizeof(ARPV4_HEADER);
 size -= sizeof(ARPV4_HEADER);

 return 1;
}
