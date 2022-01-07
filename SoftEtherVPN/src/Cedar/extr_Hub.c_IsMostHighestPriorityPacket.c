
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* TCPHeader; } ;
struct TYPE_7__ {scalar_t__ TypeL3; scalar_t__ TypeL4; scalar_t__ TypeL7; TYPE_2__ L4; } ;
struct TYPE_5__ {int Flag; } ;
typedef int SESSION ;
typedef TYPE_3__ PKT ;


 scalar_t__ L3_ARPV4 ;
 scalar_t__ L3_IPV4 ;
 scalar_t__ L4_ICMPV4 ;
 scalar_t__ L4_TCP ;
 scalar_t__ L4_UDP ;
 scalar_t__ L7_DHCPV4 ;
 int TCP_FIN ;
 int TCP_RST ;
 int TCP_SYN ;

bool IsMostHighestPriorityPacket(SESSION *s, PKT *p)
{

 if (s == ((void*)0) || p == ((void*)0))
 {
  return 0;
 }

 if (p->TypeL3 == L3_ARPV4)
 {

  return 1;
 }

 if (p->TypeL3 == L3_IPV4)
 {
  if (p->TypeL4 == L4_ICMPV4)
  {

   return 1;
  }

  if (p->TypeL4 == L4_TCP)
  {
   if ((p->L4.TCPHeader->Flag & TCP_SYN) || (p->L4.TCPHeader->Flag & TCP_FIN)
    || (p->L4.TCPHeader->Flag & TCP_RST))
   {

    return 1;
   }
  }

  if (p->TypeL4 == L4_UDP)
  {
   if (p->TypeL7 == L7_DHCPV4)
   {

    return 1;
   }
  }
 }

 return 0;
}
