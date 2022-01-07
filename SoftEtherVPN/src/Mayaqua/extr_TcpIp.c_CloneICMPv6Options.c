
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* Mtu; void* Prefix; void* TargetLinkLayer; void* SourceLinkLayer; } ;
typedef int ICMPV6_OPTION_PREFIX ;
typedef int ICMPV6_OPTION_MTU ;
typedef TYPE_1__ ICMPV6_OPTION_LIST ;
typedef int ICMPV6_OPTION_LINK_LAYER ;


 void* Clone (void*,int) ;
 int Zero (TYPE_1__*,int) ;

void CloneICMPv6Options(ICMPV6_OPTION_LIST *dst, ICMPV6_OPTION_LIST *src)
{

 if (dst == ((void*)0) || src == ((void*)0))
 {
  return;
 }

 Zero(dst, sizeof(ICMPV6_OPTION_LIST));

 dst->SourceLinkLayer = Clone(src->SourceLinkLayer, sizeof(ICMPV6_OPTION_LINK_LAYER));
 dst->TargetLinkLayer = Clone(src->TargetLinkLayer, sizeof(ICMPV6_OPTION_LINK_LAYER));
 dst->Prefix = Clone(src->Prefix, sizeof(ICMPV6_OPTION_PREFIX));
 dst->Mtu = Clone(src->Mtu, sizeof(ICMPV6_OPTION_MTU));
}
