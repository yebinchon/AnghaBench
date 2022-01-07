
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT ;
typedef void* UCHAR ;
struct TYPE_2__ {void* Type; void* Length; } ;
typedef TYPE_1__ ICMPV6_OPTION ;
typedef int BUF ;


 int Copy (void**,void*,int) ;
 int Free (void**) ;
 int WriteBuf (int *,void**,int) ;
 void** ZeroMalloc (int) ;

void BuildICMPv6OptionValue(BUF *b, UCHAR type, void *header_pointer, UINT total_size)
{
 UINT packet_size;
 UCHAR *packet;
 ICMPV6_OPTION *opt;

 if (b == ((void*)0) || header_pointer == ((void*)0))
 {
  return;
 }

 packet_size = ((total_size + 7) / 8) * 8;
 packet = ZeroMalloc(packet_size);

 Copy(packet, header_pointer, total_size);
 opt = (ICMPV6_OPTION *)packet;
 opt->Length = (UCHAR)(packet_size / 8);
 opt->Type = type;

 WriteBuf(b, packet, packet_size);

 Free(packet);
}
