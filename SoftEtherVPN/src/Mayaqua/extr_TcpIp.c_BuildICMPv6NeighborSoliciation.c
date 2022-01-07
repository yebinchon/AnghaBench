
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int opt ;
typedef int link ;
typedef int header ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_17__ {int Size; int Buf; } ;
struct TYPE_16__ {int TargetAddress; struct TYPE_16__* SourceLinkLayer; int * Address; } ;
typedef int IPV6_ADDR ;
typedef TYPE_1__ ICMPV6_OPTION_LIST ;
typedef TYPE_1__ ICMPV6_OPTION_LINK_LAYER ;
typedef TYPE_1__ ICMPV6_NEIGHBOR_SOLICIATION_HEADER ;
typedef TYPE_4__ BUF ;


 TYPE_4__* BuildICMPv6 (int *,int *,int,int ,int ,int ,int ,int ) ;
 TYPE_4__* BuildICMPv6Options (TYPE_1__*) ;
 int Copy (int *,int *,int) ;
 int FreeBuf (TYPE_4__*) ;
 int ICMPV6_TYPE_NEIGHBOR_SOLICIATION ;
 TYPE_4__* NewBuf () ;
 int WriteBuf (TYPE_4__*,TYPE_1__*,int) ;
 int WriteBufBuf (TYPE_4__*,TYPE_4__*) ;
 int Zero (TYPE_1__*,int) ;

BUF *BuildICMPv6NeighborSoliciation(IPV6_ADDR *src_ip, IPV6_ADDR *target_ip, UCHAR *my_mac_address, UINT id)
{
 ICMPV6_OPTION_LIST opt;
 ICMPV6_OPTION_LINK_LAYER link;
 ICMPV6_NEIGHBOR_SOLICIATION_HEADER header;
 BUF *b;
 BUF *b2;
 BUF *ret;

 if (src_ip == ((void*)0) || target_ip == ((void*)0) || my_mac_address == ((void*)0))
 {
  return ((void*)0);
 }

 Zero(&link, sizeof(link));
 Copy(link.Address, my_mac_address, 6);

 Zero(&opt, sizeof(opt));
 opt.SourceLinkLayer = &link;

 b = BuildICMPv6Options(&opt);

 Zero(&header, sizeof(header));
 Copy(&header.TargetAddress, target_ip, sizeof(IPV6_ADDR));

 b2 = NewBuf();

 WriteBuf(b2, &header, sizeof(header));
 WriteBufBuf(b2, b);

 ret = BuildICMPv6(src_ip, target_ip, 255,
  ICMPV6_TYPE_NEIGHBOR_SOLICIATION, 0, b2->Buf, b2->Size, id);

 FreeBuf(b);
 FreeBuf(b2);

 return ret;
}
