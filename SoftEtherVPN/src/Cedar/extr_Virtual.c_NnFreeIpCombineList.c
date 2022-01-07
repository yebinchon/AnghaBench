
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int IpCombine; } ;
typedef TYPE_1__ NATIVE_NAT ;
typedef int IP_COMBINE ;


 int * LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int NnFreeIpCombine (TYPE_1__*,int *) ;
 int ReleaseList (int ) ;

void NnFreeIpCombineList(NATIVE_NAT *t)
{
 UINT i;

 if (t == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(t->IpCombine);i++)
 {
  IP_COMBINE *c = LIST_DATA(t->IpCombine, i);

  NnFreeIpCombine(t, c);
 }

 ReleaseList(t->IpCombine);
}
