
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_5__ {int IsFragment; int HopHeaderSize; int EndPointHeaderSize; int RoutingHeaderSize; int PayloadSize; int Protocol; int * Payload; int * FragmentHeader; TYPE_1__* RoutingHeader; TYPE_1__* EndPointHeader; TYPE_1__* HopHeader; } ;
struct TYPE_4__ {int Size; } ;
typedef TYPE_1__ IPV6_OPTION_HEADER ;
typedef TYPE_2__ IPV6_HEADER_PACKET_INFO ;
typedef int IPV6_FRAGMENT_HEADER ;


 int IPV6_GET_FRAGMENT_OFFSET (int *) ;



 int IPV6_HEADER_NONE ;


bool ParseIPv6ExtHeader(IPV6_HEADER_PACKET_INFO *info, UCHAR next_header, UCHAR *buf, UINT size)
{
 bool ret = 0;
 IPV6_OPTION_HEADER *option_header;
 UINT option_header_size;
 UCHAR next_header_2 = IPV6_HEADER_NONE;

 if (info == ((void*)0) || buf == ((void*)0))
 {
  return 0;
 }

 info->IsFragment = 0;

 while (1)
 {
  if (size > 8)
  {
   next_header_2 = *((UCHAR *)buf);
  }

  switch (next_header)
  {
  case 129:
  case 131:
  case 128:

   if (size < 8)
   {
    return 0;
   }

   option_header = (IPV6_OPTION_HEADER *)buf;
   option_header_size = (option_header->Size + 1) * 8;
   if (size < option_header_size)
   {
    return 0;
   }

   switch (next_header)
   {
   case 129:
    info->HopHeader = (IPV6_OPTION_HEADER *)buf;
    info->HopHeaderSize = option_header_size;
    break;

   case 131:
    info->EndPointHeader = (IPV6_OPTION_HEADER *)buf;
    info->EndPointHeaderSize = option_header_size;
    break;

   case 128:
    info->RoutingHeader = (IPV6_OPTION_HEADER *)buf;
    info->RoutingHeaderSize = option_header_size;
    break;
   }

   buf += option_header_size;
   size -= option_header_size;
   break;

  case 130:

   if (size < sizeof(IPV6_FRAGMENT_HEADER))
   {
    return 0;
   }

   info->FragmentHeader = (IPV6_FRAGMENT_HEADER *)buf;

   if (IPV6_GET_FRAGMENT_OFFSET(info->FragmentHeader) != 0)
   {
    info->IsFragment = 1;
   }

   buf += sizeof(IPV6_FRAGMENT_HEADER);
   size -= sizeof(IPV6_FRAGMENT_HEADER);
   break;

  default:

   if (next_header != IPV6_HEADER_NONE)
   {
    info->Payload = buf;
    info->PayloadSize = size;
   }
   else
   {
    info->Payload = ((void*)0);
    info->PayloadSize = 0;
   }
   info->Protocol = next_header;
   return 1;
  }

  next_header = next_header_2;
 }
}
