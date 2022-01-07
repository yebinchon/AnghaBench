
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int IpCombine; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT ;
typedef int IP_COMBINE ;


 int FreeIpCombine (TYPE_1__*,int *) ;
 int * LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseList (int ) ;

void FreeIpCombineList(VH *v)
{
 UINT i;

 if (v == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(v->IpCombine);i++)
 {
  IP_COMBINE *c = LIST_DATA(v->IpCombine, i);

  FreeIpCombine(v, c);
 }

 ReleaseList(v->IpCombine);
}
