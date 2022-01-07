
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Mtu; int Prefix; int TargetLinkLayer; int SourceLinkLayer; } ;
typedef TYPE_1__ ICMPV6_OPTION_LIST ;


 int Free (int ) ;

void FreeCloneICMPv6Options(ICMPV6_OPTION_LIST *o)
{

 if (o == ((void*)0))
 {
  return;
 }

 Free(o->SourceLinkLayer);
 Free(o->TargetLinkLayer);
 Free(o->Prefix);
 Free(o->Mtu);
}
