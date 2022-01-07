
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_4__ {int * ICMPHeader; } ;
struct TYPE_5__ {int TypeL4; TYPE_1__ L4; } ;
typedef TYPE_2__ PKT ;
typedef int ICMP_HEADER ;


 int L4_ICMPV4 ;

bool ParseICMPv4(PKT *p, UCHAR *buf, UINT size)
{

 if (p == ((void*)0) || buf == ((void*)0))
 {
  return 0;
 }


 if (size < sizeof(ICMP_HEADER))
 {

  return 0;
 }


 p->L4.ICMPHeader = (ICMP_HEADER *)buf;
 p->TypeL4 = L4_ICMPV4;

 buf += sizeof(ICMP_HEADER);
 size -= sizeof(ICMP_HEADER);

 return 1;
}
