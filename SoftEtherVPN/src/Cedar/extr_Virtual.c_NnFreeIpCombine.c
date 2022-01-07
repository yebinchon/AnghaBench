
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_9__ {int IpParts; struct TYPE_9__* HeadIpHeaderData; struct TYPE_9__* Data; scalar_t__ DataReserved; } ;
struct TYPE_8__ {int CurrentIpQuota; } ;
typedef TYPE_1__ NATIVE_NAT ;
typedef TYPE_2__ IP_PART ;
typedef TYPE_2__ IP_COMBINE ;


 int Free (TYPE_2__*) ;
 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseList (int ) ;

void NnFreeIpCombine(NATIVE_NAT *t, IP_COMBINE *c)
{
 UINT i;

 if (c == ((void*)0))
 {
  return;
 }


 t->CurrentIpQuota -= c->DataReserved;
 Free(c->Data);


 for (i = 0;i < LIST_NUM(c->IpParts);i++)
 {
  IP_PART *p = LIST_DATA(c->IpParts, i);

  Free(p);
 }

 Free(c->HeadIpHeaderData);

 ReleaseList(c->IpParts);
 Free(c);
}
