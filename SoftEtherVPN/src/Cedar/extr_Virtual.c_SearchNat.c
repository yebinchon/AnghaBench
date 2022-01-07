
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int NatTable; } ;
typedef TYPE_1__ VH ;
typedef int NAT_ENTRY ;


 scalar_t__ Search (int ,int *) ;

NAT_ENTRY *SearchNat(VH *v, NAT_ENTRY *target)
{
 NAT_ENTRY *n;

 if (v == ((void*)0) || target == ((void*)0))
 {
  return ((void*)0);
 }


 n = (NAT_ENTRY *)Search(v->NatTable, target);

 return n;
}
