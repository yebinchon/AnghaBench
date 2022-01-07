
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Mtu; int * Prefix; int * TargetLinkLayer; int * SourceLinkLayer; } ;
typedef int ICMPV6_OPTION_PREFIX ;
typedef int ICMPV6_OPTION_MTU ;
typedef TYPE_1__ ICMPV6_OPTION_LIST ;
typedef int ICMPV6_OPTION_LINK_LAYER ;
typedef int BUF ;


 int BuildICMPv6OptionValue (int *,int ,int *,int) ;
 int ICMPV6_OPTION_TYPE_MTU ;
 int ICMPV6_OPTION_TYPE_PREFIX ;
 int ICMPV6_OPTION_TYPE_SOURCE_LINK_LAYER ;
 int ICMPV6_OPTION_TYPE_TARGET_LINK_LAYER ;
 int * NewBuf () ;
 int SeekBuf (int *,int ,int ) ;

BUF *BuildICMPv6Options(ICMPV6_OPTION_LIST *o)
{
 BUF *b;

 if (o == ((void*)0))
 {
  return ((void*)0);
 }

 b = NewBuf();

 if (o->SourceLinkLayer != ((void*)0))
 {
  BuildICMPv6OptionValue(b, ICMPV6_OPTION_TYPE_SOURCE_LINK_LAYER, o->SourceLinkLayer, sizeof(ICMPV6_OPTION_LINK_LAYER));
 }
 if (o->TargetLinkLayer != ((void*)0))
 {
  BuildICMPv6OptionValue(b, ICMPV6_OPTION_TYPE_TARGET_LINK_LAYER, o->TargetLinkLayer, sizeof(ICMPV6_OPTION_LINK_LAYER));
 }
 if (o->Prefix != ((void*)0))
 {
  BuildICMPv6OptionValue(b, ICMPV6_OPTION_TYPE_PREFIX, o->Prefix, sizeof(ICMPV6_OPTION_PREFIX));
 }
 if (o->Mtu != ((void*)0))
 {
  BuildICMPv6OptionValue(b, ICMPV6_OPTION_TYPE_MTU, o->Mtu, sizeof(ICMPV6_OPTION_MTU));
 }

 SeekBuf(b, 0, 0);

 return b;
}
