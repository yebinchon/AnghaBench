
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int NatTable; int NativeNat; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT ;
struct TYPE_15__ {int Protocol; } ;
typedef TYPE_2__ NAT_ENTRY ;


 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;




 scalar_t__ NnIsActive (TYPE_1__*) ;
 int NnPoll (int ) ;
 int PollingNatDns (TYPE_1__*,TYPE_2__*) ;
 int PollingNatIcmp (TYPE_1__*,TYPE_2__*) ;
 int PollingNatTcp (TYPE_1__*,TYPE_2__*) ;
 int PoolingNatUdp (TYPE_1__*,TYPE_2__*) ;

void PoolingNat(VH *v)
{
 UINT i;

 if (v == ((void*)0))
 {
  return;
 }

 if (NnIsActive(v))
 {

  NnPoll(v->NativeNat);
 }


 for (i = 0;i < LIST_NUM(v->NatTable);i++)
 {
  NAT_ENTRY *n = LIST_DATA(v->NatTable, i);

  switch (n->Protocol)
  {
  case 129:
   PollingNatTcp(v, n);
   break;

  case 128:
   PoolingNatUdp(v, n);
   break;

  case 130:
   PollingNatIcmp(v, n);
   break;

  case 131:
   PollingNatDns(v, n);
   break;
  }
 }
}
