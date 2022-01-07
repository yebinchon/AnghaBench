
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ SrcIp; scalar_t__ DestIp; scalar_t__ SrcPort; scalar_t__ DestPort; scalar_t__ Protocol; } ;
typedef TYPE_1__ NAT_ENTRY ;



int CompareNat(void *p1, void *p2)
{
 NAT_ENTRY *n1, *n2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 n1 = *(NAT_ENTRY **)p1;
 n2 = *(NAT_ENTRY **)p2;
 if (n1 == n2)
 {
  return 0;
 }

 if (n1->SrcIp > n2->SrcIp) return 1;
 else if (n1->SrcIp < n2->SrcIp) return -1;
 else if (n1->DestIp > n2->DestIp) return 1;
 else if (n1->DestIp < n2->DestIp) return -1;
 else if (n1->SrcPort > n2->SrcPort) return 1;
 else if (n1->SrcPort < n2->SrcPort) return -1;
 else if (n1->DestPort > n2->DestPort) return 1;
 else if (n1->DestPort < n2->DestPort) return -1;
 else if (n1->Protocol > n2->Protocol) return 1;
 else if (n1->Protocol < n2->Protocol) return -1;
 else return 0;
}
