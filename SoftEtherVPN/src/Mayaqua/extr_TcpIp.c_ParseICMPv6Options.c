
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_6__ {int Length; int Type; } ;
struct TYPE_5__ {int * Mtu; int * Prefix; int * TargetLinkLayer; int * SourceLinkLayer; } ;
typedef int ICMPV6_OPTION_PREFIX ;
typedef int ICMPV6_OPTION_MTU ;
typedef TYPE_1__ ICMPV6_OPTION_LIST ;
typedef int ICMPV6_OPTION_LINK_LAYER ;
typedef TYPE_2__ ICMPV6_OPTION ;






 int Zero (TYPE_1__*,int) ;

bool ParseICMPv6Options(ICMPV6_OPTION_LIST *o, UCHAR *buf, UINT size)
{

 if (o == ((void*)0) || buf == ((void*)0))
 {
  return 0;
 }

 Zero(o, sizeof(ICMPV6_OPTION_LIST));


 while (1)
 {
  ICMPV6_OPTION *option_header;
  UINT header_total_size;
  UCHAR *header_pointer;
  if (size < sizeof(ICMPV6_OPTION))
  {

   return 1;
  }

  option_header = (ICMPV6_OPTION *)buf;

  header_total_size = option_header->Length * 8;
  if (header_total_size == 0)
  {

   return 1;
  }
  if (size < header_total_size)
  {

   return 1;
  }

  header_pointer = buf;
  buf += header_total_size;
  size -= header_total_size;

  switch (option_header->Type)
  {
  case 129:
  case 128:

   if (header_total_size >= sizeof(ICMPV6_OPTION_LINK_LAYER))
   {
    if (option_header->Type == 129)
    {
     o->SourceLinkLayer = (ICMPV6_OPTION_LINK_LAYER *)header_pointer;
    }
    else
    {
     o->TargetLinkLayer = (ICMPV6_OPTION_LINK_LAYER *)header_pointer;
    }
   }
   else
   {

    return 0;
   }
   break;

  case 130:

   if (header_total_size >= sizeof(ICMPV6_OPTION_PREFIX))
   {
    o->Prefix = (ICMPV6_OPTION_PREFIX *)header_pointer;
   }
   else
   {

   }
   break;

  case 131:

   if (header_total_size >= sizeof(ICMPV6_OPTION_MTU))
   {
    o->Mtu = (ICMPV6_OPTION_MTU *)header_pointer;
   }
   else
   {

   }
   break;
  }
 }
}
