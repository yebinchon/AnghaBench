
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_8__ {int Size; int NextHeader; } ;
typedef TYPE_1__ IPV6_OPTION_HEADER ;
typedef int BUF ;


 int Copy (TYPE_1__*,TYPE_1__*,int) ;
 int Free (TYPE_1__*) ;
 int WriteBuf (int *,TYPE_1__*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

void BuildAndAddIPv6PacketOptionHeader(BUF *b, IPV6_OPTION_HEADER *opt, UCHAR next_header, UINT size)
{
 IPV6_OPTION_HEADER *h;
 UINT total_size;

 if (b == ((void*)0) || opt == ((void*)0))
 {
  return;
 }

 total_size = size;
 if ((total_size % 8) != 0)
 {
  total_size = ((total_size / 8) + 1) * 8;
 }

 h = ZeroMalloc(total_size);
 Copy(h, opt, size);
 h->Size = (total_size / 8) - 1;
 h->NextHeader = next_header;

 WriteBuf(b, h, total_size);

 Free(h);
}
