
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Id; } ;
typedef TYPE_1__ ETHERIP_ID ;


 int StrCmpi (int ,int ) ;

int CmpEtherIPId(void *p1, void *p2)
{
 ETHERIP_ID *k1, *k2;

 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 k1 = *(ETHERIP_ID **)p1;
 k2 = *(ETHERIP_ID **)p2;
 if (k1 == ((void*)0) || k2 == ((void*)0))
 {
  return 0;
 }

 return StrCmpi(k1->Id, k2->Id);
}
